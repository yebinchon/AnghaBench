
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_signed_vma ;
struct TYPE_2__ {int mod; int rm; } ;


 int AFLAG ;
 int DFLAG ;
 int FETCH_DATA (int ,int*) ;
 char* INTERNAL_DISASSEMBLER_ERROR ;
 int MODRM_CHECK ;
 int PREFIX_CS ;
 int PREFIX_DATA ;
 int PREFIX_DS ;
 int PREFIX_ES ;
 int PREFIX_FS ;
 int PREFIX_GS ;
 int PREFIX_SS ;
 int REX_B ;
 int REX_W ;
 int REX_X ;
 int USED_REX (int) ;
 scalar_t__ address_mode ;
 int append_seg () ;

 void* close_char ;
 int* codep ;





 size_t ds_reg ;
 size_t es_reg ;
 int get16 () ;
 int get32s () ;
 char** index16 ;
 int intel_operand_size (int,int) ;
 scalar_t__ intel_syntax ;

 scalar_t__ mode_64bit ;
 TYPE_1__ modrm ;
 char** names16 ;
 char** names32 ;
 char** names64 ;
 char** names8 ;
 char** names8rex ;
 char** names_seg ;
 int oappend (char*) ;
 char* obufp ;
 void* open_char ;
 int prefixes ;
 int print_displacement (char*,int) ;
 int print_operand_value (char*,int,int) ;

 int rex ;
 int scale_char ;
 char* scratchbuf ;
 int separator_char ;
 int set_op (int,int) ;
 int sprintf (char*,char*,int) ;

 int the_info ;
 int used_prefixes ;



__attribute__((used)) static void
OP_E (int bytemode, int sizeflag)
{
  bfd_vma disp;
  int add = 0;
  int riprel = 0;
  USED_REX (REX_B);
  if (rex & REX_B)
    add += 8;


  MODRM_CHECK;
  codep++;

  if (modrm.mod == 3)
    {
      switch (bytemode)
 {
 case 138:
   USED_REX (0);
   if (rex)
     oappend (names8rex[modrm.rm + add]);
   else
     oappend (names8[modrm.rm + add]);
   break;
 case 128:
   oappend (names16[modrm.rm + add]);
   break;
 case 137:
   oappend (names32[modrm.rm + add]);
   break;
 case 131:
   oappend (names64[modrm.rm + add]);
   break;
 case 132:
   if (address_mode == mode_64bit)
     oappend (names64[modrm.rm + add]);
   else
     oappend (names32[modrm.rm + add]);
   break;
 case 130:
   if (address_mode == mode_64bit && (sizeflag & DFLAG))
     {
       oappend (names64[modrm.rm + add]);
       used_prefixes |= (prefixes & PREFIX_DATA);
       break;
     }
   bytemode = 129;

 case 129:
 case 136:
 case 135:
 case 134:
 case 133:
   USED_REX (REX_W);
   if (rex & REX_W)
     oappend (names64[modrm.rm + add]);
   else if ((sizeflag & DFLAG) || bytemode != 129)
     oappend (names32[modrm.rm + add]);
   else
     oappend (names16[modrm.rm + add]);
   used_prefixes |= (prefixes & PREFIX_DATA);
   break;
 case 0:
   break;
 default:
   oappend (INTERNAL_DISASSEMBLER_ERROR);
   break;
 }
      return;
    }

  disp = 0;
  if (intel_syntax)
    intel_operand_size (bytemode, sizeflag);
  append_seg ();

  if ((sizeflag & AFLAG) || address_mode == mode_64bit)
    {

      int havedisp;
      int havesib;
      int havebase;
      int base;
      int index = 0;
      int scale = 0;

      havesib = 0;
      havebase = 1;
      base = modrm.rm;

      if (base == 4)
 {
   havesib = 1;
   (void) FETCH_DATA (the_info, codep + 1);
   index = (*codep >> 3) & 7;
   if (address_mode == mode_64bit || index != 0x4)

     scale = (*codep >> 6) & 3;
   base = *codep & 7;
   USED_REX (REX_X);
   if (rex & REX_X)
     index += 8;
   codep++;
 }
      base += add;

      switch (modrm.mod)
 {
 case 0:
   if ((base & 7) == 5)
     {
       havebase = 0;
       if (address_mode == mode_64bit && !havesib)
  riprel = 1;
       disp = get32s ();
     }
   break;
 case 1:
   FETCH_DATA (the_info, codep + 1);
   disp = *codep++;
   if ((disp & 0x80) != 0)
     disp -= 0x100;
   break;
 case 2:
   disp = get32s ();
   break;
 }

      havedisp = havebase || (havesib && (index != 4 || scale != 0));

      if (!intel_syntax)
 if (modrm.mod != 0 || (base & 7) == 5)
   {
     if (havedisp || riprel)
       print_displacement (scratchbuf, disp);
     else
       print_operand_value (scratchbuf, 1, disp);
     oappend (scratchbuf);
     if (riprel)
       {
  set_op (disp, 1);
  oappend ("(%rip)");
       }
   }

      if (havedisp || (intel_syntax && riprel))
 {
   *obufp++ = open_char;
   if (intel_syntax && riprel)
     {
       set_op (disp, 1);
       oappend ("rip");
     }
   *obufp = '\0';
   if (havebase)
     oappend (address_mode == mode_64bit && (sizeflag & AFLAG)
       ? names64[base] : names32[base]);
   if (havesib)
     {
       if (index != 4)
  {
    if (!intel_syntax || havebase)
      {
        *obufp++ = separator_char;
        *obufp = '\0';
      }
    oappend (address_mode == mode_64bit && (sizeflag & AFLAG)
      ? names64[index] : names32[index]);
  }
       if (scale != 0 || (!intel_syntax && index != 4))
  {
    *obufp++ = scale_char;
    *obufp = '\0';
    sprintf (scratchbuf, "%d", 1 << scale);
    oappend (scratchbuf);
  }
     }
   if (intel_syntax
       && (disp || modrm.mod != 0 || (base & 7) == 5))
     {
       if ((bfd_signed_vma) disp >= 0)
  {
    *obufp++ = '+';
    *obufp = '\0';
  }
       else if (modrm.mod != 1)
  {
    *obufp++ = '-';
    *obufp = '\0';
    disp = - (bfd_signed_vma) disp;
  }

       print_displacement (scratchbuf, disp);
       oappend (scratchbuf);
     }

   *obufp++ = close_char;
   *obufp = '\0';
 }
      else if (intel_syntax)
 {
   if (modrm.mod != 0 || (base & 7) == 5)
     {
       if (prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
         | PREFIX_ES | PREFIX_FS | PREFIX_GS))
  ;
       else
  {
    oappend (names_seg[ds_reg - es_reg]);
    oappend (":");
  }
       print_operand_value (scratchbuf, 1, disp);
       oappend (scratchbuf);
     }
 }
    }
  else
    {
      switch (modrm.mod)
 {
 case 0:
   if (modrm.rm == 6)
     {
       disp = get16 ();
       if ((disp & 0x8000) != 0)
  disp -= 0x10000;
     }
   break;
 case 1:
   FETCH_DATA (the_info, codep + 1);
   disp = *codep++;
   if ((disp & 0x80) != 0)
     disp -= 0x100;
   break;
 case 2:
   disp = get16 ();
   if ((disp & 0x8000) != 0)
     disp -= 0x10000;
   break;
 }

      if (!intel_syntax)
 if (modrm.mod != 0 || modrm.rm == 6)
   {
     print_displacement (scratchbuf, disp);
     oappend (scratchbuf);
   }

      if (modrm.mod != 0 || modrm.rm != 6)
 {
   *obufp++ = open_char;
   *obufp = '\0';
   oappend (index16[modrm.rm]);
   if (intel_syntax
       && (disp || modrm.mod != 0 || modrm.rm == 6))
     {
       if ((bfd_signed_vma) disp >= 0)
  {
    *obufp++ = '+';
    *obufp = '\0';
  }
       else if (modrm.mod != 1)
  {
    *obufp++ = '-';
    *obufp = '\0';
    disp = - (bfd_signed_vma) disp;
  }

       print_displacement (scratchbuf, disp);
       oappend (scratchbuf);
     }

   *obufp++ = close_char;
   *obufp = '\0';
 }
      else if (intel_syntax)
 {
   if (prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
     | PREFIX_ES | PREFIX_FS | PREFIX_GS))
     ;
   else
     {
       oappend (names_seg[ds_reg - es_reg]);
       oappend (":");
     }
   print_operand_value (scratchbuf, 1, disp & 0xffff);
   oappend (scratchbuf);
 }
    }
}
