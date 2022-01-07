
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device_id {int dev_type; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static int do_ap_entry(const char *filename,
         struct ap_device_id *id, char *alias)
{
 sprintf(alias, "ap:t%02X*", id->dev_type);
 return 1;
}
