
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int __napi_gro_frags_gr (struct napi_struct*) ;

gro_result_t napi_gro_frags_gr(struct napi_struct *napi)
{
 return __napi_gro_frags_gr(napi);
}
