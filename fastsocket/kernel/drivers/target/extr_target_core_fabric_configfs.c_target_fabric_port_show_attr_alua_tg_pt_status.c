
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_sep; } ;
typedef int ssize_t ;


 int ENODEV ;
 int core_alua_show_secondary_status (struct se_lun*,char*) ;

__attribute__((used)) static ssize_t target_fabric_port_show_attr_alua_tg_pt_status(
 struct se_lun *lun,
 char *page)
{
 if (!lun || !lun->lun_sep)
  return -ENODEV;

 return core_alua_show_secondary_status(lun, page);
}
