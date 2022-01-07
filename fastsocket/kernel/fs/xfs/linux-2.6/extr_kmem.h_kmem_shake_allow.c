
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_FS ;
 int __GFP_WAIT ;

__attribute__((used)) static inline int
kmem_shake_allow(gfp_t gfp_mask)
{
 return ((gfp_mask & __GFP_WAIT) && (gfp_mask & __GFP_FS));
}
