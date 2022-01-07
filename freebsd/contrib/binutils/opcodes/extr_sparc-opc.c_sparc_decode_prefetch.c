
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int prefetch_table ;

const char *
sparc_decode_prefetch (int value)
{
  return lookup_value (prefetch_table, value);
}
