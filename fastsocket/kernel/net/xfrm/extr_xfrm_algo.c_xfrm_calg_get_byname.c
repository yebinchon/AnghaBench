
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;


 int xfrm_alg_name_match ;
 int xfrm_calg_list ;
 struct xfrm_algo_desc* xfrm_find_algo (int *,int ,char*,int) ;

struct xfrm_algo_desc *xfrm_calg_get_byname(char *name, int probe)
{
 return xfrm_find_algo(&xfrm_calg_list, xfrm_alg_name_match, name,
         probe);
}
