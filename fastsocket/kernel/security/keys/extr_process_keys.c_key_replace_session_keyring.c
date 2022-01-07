
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cred {TYPE_1__* tgcred; void* thread_keyring; int jit_keyring; int cap_bset; int cap_effective; int cap_permitted; int cap_inheritable; int securebits; int group_info; int user; int fsgid; int sgid; int egid; int gid; int fsuid; int suid; int euid; int uid; } ;
struct TYPE_4__ {struct cred* replacement_session_keyring; } ;
struct TYPE_3__ {void* process_keyring; int tgid; } ;


 int commit_creds (struct cred*) ;
 TYPE_2__* current ;
 struct cred* current_cred () ;
 int get_group_info (int ) ;
 int get_uid (int ) ;
 void* key_get (void*) ;
 int security_transfer_creds (struct cred*,struct cred const*) ;
 int tasklist_lock ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

void key_replace_session_keyring(void)
{
 const struct cred *old;
 struct cred *new;

 if (!current->replacement_session_keyring)
  return;

 write_lock_irq(&tasklist_lock);
 new = current->replacement_session_keyring;
 current->replacement_session_keyring = ((void*)0);
 write_unlock_irq(&tasklist_lock);

 if (!new)
  return;

 old = current_cred();
 new-> uid = old-> uid;
 new-> euid = old-> euid;
 new-> suid = old-> suid;
 new->fsuid = old->fsuid;
 new-> gid = old-> gid;
 new-> egid = old-> egid;
 new-> sgid = old-> sgid;
 new->fsgid = old->fsgid;
 new->user = get_uid(old->user);
 new->group_info = get_group_info(old->group_info);

 new->securebits = old->securebits;
 new->cap_inheritable = old->cap_inheritable;
 new->cap_permitted = old->cap_permitted;
 new->cap_effective = old->cap_effective;
 new->cap_bset = old->cap_bset;

 new->jit_keyring = old->jit_keyring;
 new->thread_keyring = key_get(old->thread_keyring);
 new->tgcred->tgid = old->tgcred->tgid;
 new->tgcred->process_keyring = key_get(old->tgcred->process_keyring);

 security_transfer_creds(new, old);

 commit_creds(new);
}
