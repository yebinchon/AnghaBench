
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;


 int __xfrm6_sort (void**,void**,int,int ,int) ;
 int __xfrm6_state_sort_cmp ;

__attribute__((used)) static int
__xfrm6_state_sort(struct xfrm_state **dst, struct xfrm_state **src, int n)
{
 return __xfrm6_sort((void **)dst, (void **)src, n,
       __xfrm6_state_sort_cmp, 6);
}
