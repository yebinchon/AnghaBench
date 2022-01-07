
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_id; int tg_pt_gp_valid_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_show_attr_tg_pt_gp_id(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 if (!tg_pt_gp->tg_pt_gp_valid_id)
  return 0;

 return sprintf(page, "%hu\n", tg_pt_gp->tg_pt_gp_id);
}
