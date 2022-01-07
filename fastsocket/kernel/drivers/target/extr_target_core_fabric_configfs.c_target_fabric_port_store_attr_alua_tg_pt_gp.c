
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_sep; } ;
typedef int ssize_t ;


 int ENODEV ;
 int core_alua_store_tg_pt_gp_info (int ,char const*,size_t) ;

__attribute__((used)) static ssize_t target_fabric_port_store_attr_alua_tg_pt_gp(
 struct se_lun *lun,
 const char *page,
 size_t count)
{
 if (!lun || !lun->lun_sep)
  return -ENODEV;

 return core_alua_store_tg_pt_gp_info(lun->lun_sep, page, count);
}
