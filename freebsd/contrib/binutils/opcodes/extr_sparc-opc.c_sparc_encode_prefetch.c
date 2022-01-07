
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lookup_name (int ,char const*) ;
 int prefetch_table ;

int
sparc_encode_prefetch (const char *name)
{
  return lookup_name (prefetch_table, name);
}
