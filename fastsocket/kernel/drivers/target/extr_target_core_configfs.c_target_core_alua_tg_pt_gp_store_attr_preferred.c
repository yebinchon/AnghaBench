
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int dummy; } ;
typedef int ssize_t ;


 int core_alua_store_preferred_bit (struct t10_alua_tg_pt_gp*,char const*,size_t) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_store_attr_preferred(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 return core_alua_store_preferred_bit(tg_pt_gp, page, count);
}
