
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_selector {int dummy; } ;
struct xfrm_dst {int partner; } ;
struct dst_entry {int dummy; } ;


 int xfrm_dst_alloc_copy (void**,struct xfrm_selector*,int) ;

__attribute__((used)) static int inline
xfrm_dst_update_parent(struct dst_entry *dst, struct xfrm_selector *sel)
{





 return 0;

}
