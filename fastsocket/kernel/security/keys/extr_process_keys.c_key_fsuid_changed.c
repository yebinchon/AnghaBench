
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {TYPE_1__* cred; } ;
struct TYPE_4__ {int sem; int uid; } ;
struct TYPE_3__ {TYPE_2__* thread_keyring; int fsuid; } ;


 int BUG_ON (int) ;
 int down_write (int *) ;
 int up_write (int *) ;

void key_fsuid_changed(struct task_struct *tsk)
{

 BUG_ON(!tsk->cred);
 if (tsk->cred->thread_keyring) {
  down_write(&tsk->cred->thread_keyring->sem);
  tsk->cred->thread_keyring->uid = tsk->cred->fsuid;
  up_write(&tsk->cred->thread_keyring->sem);
 }
}
