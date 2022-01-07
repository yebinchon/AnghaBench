
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_device_id {int type; } ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static int do_css_entry(const char *filename,
   struct css_device_id *id, char *alias)
{
 sprintf(alias, "css:t%01X", id->type);
 return 1;
}
