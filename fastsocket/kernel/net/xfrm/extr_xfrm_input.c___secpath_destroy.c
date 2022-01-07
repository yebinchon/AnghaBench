
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_path {int len; int * xvec; } ;


 int kmem_cache_free (int ,struct sec_path*) ;
 int secpath_cachep ;
 int xfrm_state_put (int ) ;

void __secpath_destroy(struct sec_path *sp)
{
 int i;
 for (i = 0; i < sp->len; i++)
  xfrm_state_put(sp->xvec[i]);
 kmem_cache_free(secpath_cachep, sp);
}
