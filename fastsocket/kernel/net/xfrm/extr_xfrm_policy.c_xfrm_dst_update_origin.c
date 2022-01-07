
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_dst {int origin; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int xfrm_dst_alloc_copy (void**,struct flowi*,int) ;

__attribute__((used)) static int inline
xfrm_dst_update_origin(struct dst_entry *dst, struct flowi *fl)
{




 return 0;

}
