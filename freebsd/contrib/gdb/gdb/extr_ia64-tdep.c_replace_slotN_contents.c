
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int replace_bit_field (char*,long long,int,int) ;

__attribute__((used)) static void
replace_slotN_contents (char *bundle, long long instr, int slotnum)
{
  replace_bit_field (bundle, instr, 5+41*slotnum, 41);
}
