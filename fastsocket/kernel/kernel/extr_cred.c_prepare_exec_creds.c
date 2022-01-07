
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_group_cred {int * process_keyring; int session_keyring; int lock; int usage; } ;
struct cred {struct thread_group_cred* tgcred; int * thread_keyring; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int key_get (int ) ;
 int key_put (int *) ;
 int kfree (struct thread_group_cred*) ;
 struct thread_group_cred* kmalloc (int,int ) ;
 int memcpy (struct thread_group_cred*,struct thread_group_cred*,int) ;
 struct cred* prepare_creds () ;
 int release_tgcred (struct cred*) ;
 int spin_lock_init (int *) ;

struct cred *prepare_exec_creds(void)
{
 struct thread_group_cred *tgcred = ((void*)0);
 struct cred *new;







 new = prepare_creds();
 if (!new) {
  kfree(tgcred);
  return new;
 }
 return new;
}
