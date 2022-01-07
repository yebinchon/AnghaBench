
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int dummy; } ;
typedef int ssize_t ;


 int core_alua_show_implict_trans_secs (struct t10_alua_tg_pt_gp*,char*) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_show_attr_implict_trans_secs(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 return core_alua_show_implict_trans_secs(tg_pt_gp, page);
}
