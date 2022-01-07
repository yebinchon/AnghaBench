
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_status; } ;
typedef int ssize_t ;


 char* core_alua_dump_status (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_show_attr_alua_access_status(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 return sprintf(page, "%s\n",
  core_alua_dump_status(tg_pt_gp->tg_pt_gp_alua_access_status));
}
