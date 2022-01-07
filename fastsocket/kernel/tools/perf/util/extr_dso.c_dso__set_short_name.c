
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {char const* short_name; int short_name_len; } ;


 int strlen (char const*) ;

void dso__set_short_name(struct dso *dso, const char *name)
{
 if (name == ((void*)0))
  return;
 dso->short_name = name;
 dso->short_name_len = strlen(name);
}
