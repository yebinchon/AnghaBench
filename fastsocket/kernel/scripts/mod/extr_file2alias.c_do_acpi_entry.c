
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_id {char* id; } ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int do_acpi_entry(const char *filename,
   struct acpi_device_id *id, char *alias)
{
 sprintf(alias, "acpi*:%s:*", id->id);
 return 1;
}
