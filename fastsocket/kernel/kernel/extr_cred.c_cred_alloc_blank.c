
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int magic; int usage; TYPE_1__* tgcred; } ;
struct TYPE_2__ {int usage; } ;


 int CRED_MAGIC ;
 int GFP_KERNEL ;
 int abort_creds (struct cred*) ;
 int atomic_set (int *,int) ;
 int cred_jar ;
 int kmem_cache_free (int ,struct cred*) ;
 struct cred* kmem_cache_zalloc (int ,int ) ;
 TYPE_1__* kzalloc (int,int ) ;
 scalar_t__ security_cred_alloc_blank (struct cred*,int ) ;

struct cred *cred_alloc_blank(void)
{
 struct cred *new;

 new = kmem_cache_zalloc(cred_jar, GFP_KERNEL);
 if (!new)
  return ((void*)0);
 atomic_set(&new->usage, 1);

 if (security_cred_alloc_blank(new, GFP_KERNEL) < 0)
  goto error;




 return new;

error:
 abort_creds(new);
 return ((void*)0);
}
