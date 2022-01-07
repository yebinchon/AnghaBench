
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_group_cred {int lock; int usage; } ;
struct cred {int usage; int * security; struct thread_group_cred* tgcred; int jit_keyring; int * request_key_auth; int * thread_keyring; int user; int group_info; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int KEY_REQKEY_DEFL_DEFAULT ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int cred_jar ;
 int get_group_info (int ) ;
 int get_uid (int ) ;
 int init_cred ;
 int kdebug (char*,struct cred*) ;
 struct cred* kmem_cache_alloc (int ,int ) ;
 struct thread_group_cred* kzalloc (int,int ) ;
 int memcpy (struct cred*,int *,int) ;
 int put_cred (struct cred*) ;
 scalar_t__ security_prepare_creds (struct cred*,int *,int ) ;
 int set_cred_subscribers (struct cred*,int ) ;
 int spin_lock_init (int *) ;
 int validate_creds (struct cred*) ;

struct cred *prepare_usermodehelper_creds(void)
{



 struct cred *new;







 new = kmem_cache_alloc(cred_jar, GFP_ATOMIC);
 if (!new)
  return ((void*)0);

 kdebug("prepare_usermodehelper_creds() alloc %p", new);

 memcpy(new, &init_cred, sizeof(struct cred));

 atomic_set(&new->usage, 1);
 set_cred_subscribers(new, 0);
 get_group_info(new->group_info);
 get_uid(new->user);
 if (security_prepare_creds(new, &init_cred, GFP_ATOMIC) < 0)
  goto error;
 validate_creds(new);

 BUG_ON(atomic_read(&new->usage) != 1);
 return new;

error:
 put_cred(new);
 return ((void*)0);
}
