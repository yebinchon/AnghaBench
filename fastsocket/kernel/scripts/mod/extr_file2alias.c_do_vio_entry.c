
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_device_id {char* type; char* compat; } ;


 int add_wildcard (char*) ;
 scalar_t__ isspace (char) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int do_vio_entry(const char *filename, struct vio_device_id *vio,
  char *alias)
{
 char *tmp;

 sprintf(alias, "vio:T%sS%s", vio->type[0] ? vio->type : "*",
   vio->compat[0] ? vio->compat : "*");


 for (tmp = alias; tmp && *tmp; tmp++)
  if (isspace (*tmp))
   *tmp = '_';

 add_wildcard(alias);
 return 1;
}
