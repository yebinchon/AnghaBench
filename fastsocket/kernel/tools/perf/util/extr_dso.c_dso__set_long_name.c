
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char* long_name; int long_name_len; } ;


 int strlen (char*) ;

void dso__set_long_name(struct dso *dso, char *name)
{
 if (name == ((void*)0))
  return;
 dso->long_name = name;
 dso->long_name_len = strlen(name);
}
