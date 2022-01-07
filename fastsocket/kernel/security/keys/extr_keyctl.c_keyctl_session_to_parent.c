
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int pid; struct cred* replacement_session_keyring; int mm; struct task_struct* real_parent; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; scalar_t__ gid; scalar_t__ egid; scalar_t__ sgid; TYPE_1__* tgcred; } ;
typedef int * key_ref_t ;
struct TYPE_5__ {scalar_t__ uid; } ;
struct TYPE_4__ {TYPE_2__* session_keyring; } ;


 int ENOMEM ;
 long EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (int *) ;
 int KEY_LINK ;
 int KEY_SPEC_SESSION_KEYRING ;
 long PTR_ERR (int *) ;
 int TIF_NOTIFY_RESUME ;
 struct cred* __task_cred (struct task_struct*) ;
 struct cred* cred_alloc_blank () ;
 struct task_struct* current ;
 struct cred* current_cred () ;
 int key_ref_put (int *) ;
 TYPE_2__* key_ref_to_ptr (int *) ;
 int * lookup_user_key (int ,int ,int ) ;
 int put_cred (struct cred*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_key_session_to_parent (struct cred const*,struct cred const*,TYPE_2__*) ;
 int set_ti_thread_flag (int ,int ) ;
 int task_thread_info (struct task_struct*) ;
 int tasklist_lock ;
 int thread_group_empty (struct task_struct*) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

long keyctl_session_to_parent(void)
{
 return -EOPNOTSUPP;

}
