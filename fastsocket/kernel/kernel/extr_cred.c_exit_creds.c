
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int * replacement_session_keyring; TYPE_1__* cred; int * real_cred; int pid; } ;
struct cred {int dummy; } ;
struct TYPE_3__ {int usage; } ;


 int alter_cred_subscribers (struct cred*,int) ;
 int atomic_read (int *) ;
 int kdebug (char*,int ,int *,TYPE_1__*,int ,int ) ;
 int put_cred (struct cred*) ;
 int read_cred_subscribers (TYPE_1__*) ;
 int validate_creds (struct cred*) ;

void exit_creds(struct task_struct *tsk)
{
 struct cred *cred;

 kdebug("exit_creds(%u,%p,%p,{%d,%d})", tsk->pid, tsk->real_cred, tsk->cred,
        atomic_read(&tsk->cred->usage),
        read_cred_subscribers(tsk->cred));

 cred = (struct cred *) tsk->real_cred;
 tsk->real_cred = ((void*)0);
 validate_creds(cred);
 alter_cred_subscribers(cred, -1);
 put_cred(cred);

 cred = (struct cred *) tsk->cred;
 tsk->cred = ((void*)0);
 validate_creds(cred);
 alter_cred_subscribers(cred, -1);
 put_cred(cred);

 cred = (struct cred *) tsk->replacement_session_keyring;
 if (cred) {
  tsk->replacement_session_keyring = ((void*)0);
  validate_creds(cred);
  put_cred(cred);
 }
}
