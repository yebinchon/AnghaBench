
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long extract_bit_field (char*,int,int) ;

__attribute__((used)) static long long
slotN_contents (char *bundle, int slotnum)
{
  return extract_bit_field (bundle, 5+41*slotnum, 41);
}
