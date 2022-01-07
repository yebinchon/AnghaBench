
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asi_table ;
 int lookup_name (int ,char const*) ;

int
sparc_encode_asi (const char *name)
{
  return lookup_name (asi_table, name);
}
