
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;


 unsigned int aalg_entries () ;
 struct xfrm_algo_desc* aalg_list ;

struct xfrm_algo_desc *xfrm_aalg_get_byidx(unsigned int idx)
{
 if (idx >= aalg_entries())
  return ((void*)0);

 return &aalg_list[idx];
}
