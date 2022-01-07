
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_state; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_show_attr_alua_access_state(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 char *page)
{
 return sprintf(page, "%d\n",
  atomic_read(&tg_pt_gp->tg_pt_gp_alua_access_state));
}
