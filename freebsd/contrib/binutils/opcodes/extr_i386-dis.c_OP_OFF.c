
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;


 int AFLAG ;
 int PREFIX_CS ;
 int PREFIX_DS ;
 int PREFIX_ES ;
 int PREFIX_FS ;
 int PREFIX_GS ;
 int PREFIX_SS ;
 int SUFFIX_ALWAYS ;
 scalar_t__ address_mode ;
 int append_seg () ;
 size_t ds_reg ;
 size_t es_reg ;
 int get16 () ;
 int get32 () ;
 int intel_operand_size (int,int) ;
 scalar_t__ intel_syntax ;
 scalar_t__ mode_64bit ;
 char** names_seg ;
 int oappend (char*) ;
 int prefixes ;
 int print_operand_value (char*,int,int ) ;
 char* scratchbuf ;

__attribute__((used)) static void
OP_OFF (int bytemode, int sizeflag)
{
  bfd_vma off;

  if (intel_syntax && (sizeflag & SUFFIX_ALWAYS))
    intel_operand_size (bytemode, sizeflag);
  append_seg ();

  if ((sizeflag & AFLAG) || address_mode == mode_64bit)
    off = get32 ();
  else
    off = get16 ();

  if (intel_syntax)
    {
      if (!(prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
   | PREFIX_ES | PREFIX_FS | PREFIX_GS)))
 {
   oappend (names_seg[ds_reg - es_reg]);
   oappend (":");
 }
    }
  print_operand_value (scratchbuf, 1, off);
  oappend (scratchbuf);
}
