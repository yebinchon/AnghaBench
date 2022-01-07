
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_path {int len; int refcnt; int * xvec; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int) ;
 struct sec_path* kmem_cache_alloc (int ,int ) ;
 int memcpy (struct sec_path*,struct sec_path*,int) ;
 int secpath_cachep ;
 int xfrm_state_hold (int ) ;

struct sec_path *secpath_dup(struct sec_path *src)
{
 struct sec_path *sp;

 sp = kmem_cache_alloc(secpath_cachep, GFP_ATOMIC);
 if (!sp)
  return ((void*)0);

 sp->len = 0;
 if (src) {
  int i;

  memcpy(sp, src, sizeof(*sp));
  for (i = 0; i < sp->len; i++)
   xfrm_state_hold(sp->xvec[i]);
 }
 atomic_set(&sp->refcnt, 1);
 return sp;
}
