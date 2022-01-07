
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct TYPE_6__ {struct ncp_server* object_name; } ;
struct TYPE_5__ {struct ncp_server* data; } ;
struct TYPE_4__ {int wdog_pid; } ;
struct ncp_server {int packet; int txbuf; int rxbuf; TYPE_3__ auth; TYPE_2__ priv; TYPE_1__ m; scalar_t__ ncp_filp; scalar_t__ info_filp; int nls_io; int nls_vol; } ;


 struct ncp_server* NCP_SBP (struct super_block*) ;
 int SIGTERM ;
 int fput (scalar_t__) ;
 int kfree (struct ncp_server*) ;
 int kill_pid (int ,int ,int) ;
 int lock_kernel () ;
 int ncp_disconnect (struct ncp_server*) ;
 int ncp_lock_server (struct ncp_server*) ;
 int ncp_stop_tasks (struct ncp_server*) ;
 int ncp_unlock_server (struct ncp_server*) ;
 int put_pid (int ) ;
 int unload_nls (int ) ;
 int unlock_kernel () ;
 int vfree (int ) ;

__attribute__((used)) static void ncp_put_super(struct super_block *sb)
{
 struct ncp_server *server = NCP_SBP(sb);

 lock_kernel();

 ncp_lock_server(server);
 ncp_disconnect(server);
 ncp_unlock_server(server);

 ncp_stop_tasks(server);







 if (server->info_filp)
  fput(server->info_filp);
 fput(server->ncp_filp);
 kill_pid(server->m.wdog_pid, SIGTERM, 1);
 put_pid(server->m.wdog_pid);

 kfree(server->priv.data);
 kfree(server->auth.object_name);
 vfree(server->rxbuf);
 vfree(server->txbuf);
 vfree(server->packet);
 sb->s_fs_info = ((void*)0);
 kfree(server);

 unlock_kernel();
}
