
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int dummy; } ;
typedef int ssize_t ;


 char* TCM_LOOP_VERSION ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t tcm_loop_wwn_show_attr_version(
 struct target_fabric_configfs *tf,
 char *page)
{
 return sprintf(page, "TCM Loopback Fabric module %s\n", TCM_LOOP_VERSION);
}
