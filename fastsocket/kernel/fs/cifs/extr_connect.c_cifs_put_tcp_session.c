
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int * response; } ;
struct TCP_Server_Info {scalar_t__ srv_count; int tsk; TYPE_1__ session_key; int tcpStatus; int echo; int tcp_ses_list; } ;


 int CifsExiting ;
 int GlobalMid_Lock ;
 int SIGKILL ;
 int cancel_delayed_work_sync (int *) ;
 int cifs_crypto_shash_release (struct TCP_Server_Info*) ;
 int cifs_fscache_release_client_cookie (struct TCP_Server_Info*) ;
 int cifs_tcp_ses_lock ;
 int force_sig (int ,struct task_struct*) ;
 int kfree (int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct task_struct* xchg (int *,int *) ;

__attribute__((used)) static void
cifs_put_tcp_session(struct TCP_Server_Info *server)
{
 struct task_struct *task;

 spin_lock(&cifs_tcp_ses_lock);
 if (--server->srv_count > 0) {
  spin_unlock(&cifs_tcp_ses_lock);
  return;
 }

 list_del_init(&server->tcp_ses_list);
 spin_unlock(&cifs_tcp_ses_lock);

 cancel_delayed_work_sync(&server->echo);

 spin_lock(&GlobalMid_Lock);
 server->tcpStatus = CifsExiting;
 spin_unlock(&GlobalMid_Lock);

 cifs_crypto_shash_release(server);
 cifs_fscache_release_client_cookie(server);

 kfree(server->session_key.response);
 server->session_key.response = ((void*)0);
 server->session_key.len = 0;

 task = xchg(&server->tsk, ((void*)0));
 if (task)
  force_sig(SIGKILL, task);
}
