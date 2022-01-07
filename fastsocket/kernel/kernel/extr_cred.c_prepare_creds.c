
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct cred* cred; } ;
struct cred {int * security; TYPE_1__* tgcred; int request_key_auth; int thread_keyring; int user; int group_info; int usage; } ;
struct TYPE_2__ {int usage; } ;


 int GFP_KERNEL ;
 int abort_creds (struct cred*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int cred_jar ;
 struct task_struct* current ;
 int get_group_info (int ) ;
 int get_uid (int ) ;
 int kdebug (char*,struct cred*) ;
 int key_get (int ) ;
 struct cred* kmem_cache_alloc (int ,int ) ;
 int memcpy (struct cred*,struct cred const*,int) ;
 scalar_t__ security_prepare_creds (struct cred*,struct cred const*,int ) ;
 int set_cred_subscribers (struct cred*,int ) ;
 int validate_creds (struct cred*) ;
 int validate_process_creds () ;

struct cred *prepare_creds(void)
{
 struct task_struct *task = current;
 const struct cred *old;
 struct cred *new;

 validate_process_creds();

 new = kmem_cache_alloc(cred_jar, GFP_KERNEL);
 if (!new)
  return ((void*)0);

 kdebug("prepare_creds() alloc %p", new);

 old = task->cred;
 memcpy(new, old, sizeof(struct cred));

 atomic_set(&new->usage, 1);
 set_cred_subscribers(new, 0);
 get_group_info(new->group_info);
 get_uid(new->user);
 if (security_prepare_creds(new, old, GFP_KERNEL) < 0)
  goto error;
 validate_creds(new);
 return new;

error:
 abort_creds(new);
 return ((void*)0);
}
