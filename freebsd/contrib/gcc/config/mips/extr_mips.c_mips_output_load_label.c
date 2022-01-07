
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DImode ;
 int ISA_HAS_LOAD_DELAY ;
 scalar_t__ Pmode ;
 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 int mips_abi ;

const char *
mips_output_load_label (void)
{
  if (TARGET_EXPLICIT_RELOCS)
    switch (mips_abi)
      {
      case 128:
 return "%[lw\t%@,%%got_page(%0)(%+)\n\taddiu\t%@,%@,%%got_ofst(%0)";

      case 129:
 return "%[ld\t%@,%%got_page(%0)(%+)\n\tdaddiu\t%@,%@,%%got_ofst(%0)";

      default:
 if (ISA_HAS_LOAD_DELAY)
   return "%[lw\t%@,%%got(%0)(%+)%#\n\taddiu\t%@,%@,%%lo(%0)";
 return "%[lw\t%@,%%got(%0)(%+)\n\taddiu\t%@,%@,%%lo(%0)";
      }
  else
    {
      if (Pmode == DImode)
 return "%[dla\t%@,%0";
      else
 return "%[la\t%@,%0";
    }
}
