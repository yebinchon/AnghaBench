
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_wwn {char* unit_serial; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t target_core_dev_wwn_show_attr_vpd_unit_serial(
 struct t10_wwn *t10_wwn,
 char *page)
{
 return sprintf(page, "T10 VPD Unit Serial Number: %s\n",
  &t10_wwn->unit_serial[0]);
}
