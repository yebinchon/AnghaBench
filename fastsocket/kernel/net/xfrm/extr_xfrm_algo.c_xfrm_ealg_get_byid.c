
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_algo_desc {int dummy; } ;


 int xfrm_alg_id_match ;
 int xfrm_ealg_list ;
 struct xfrm_algo_desc* xfrm_find_algo (int *,int ,void*,int) ;

struct xfrm_algo_desc *xfrm_ealg_get_byid(int alg_id)
{
 return xfrm_find_algo(&xfrm_ealg_list, xfrm_alg_id_match,
         (void *)(unsigned long)alg_id, 1);
}
