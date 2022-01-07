
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int membar_table ;

const char *
sparc_decode_membar (int value)
{
  return lookup_value (membar_table, value);
}
