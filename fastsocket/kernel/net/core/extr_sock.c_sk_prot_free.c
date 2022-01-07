
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct proto {struct kmem_cache* slab; struct module* owner; } ;
struct module {int dummy; } ;
struct kmem_cache {int dummy; } ;


 int kfree (struct sock*) ;
 int kmem_cache_free (struct kmem_cache*,struct sock*) ;
 int module_put (struct module*) ;
 int security_sk_free (struct sock*) ;

__attribute__((used)) static void sk_prot_free(struct proto *prot, struct sock *sk)
{
 struct kmem_cache *slab;
 struct module *owner;

 owner = prot->owner;
 slab = prot->slab;

 security_sk_free(sk);
 if (slab != ((void*)0))
  kmem_cache_free(slab, sk);
 else
  kfree(sk);
 module_put(owner);
}
