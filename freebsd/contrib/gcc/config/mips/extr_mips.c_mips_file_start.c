
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;







 char* ASM_COMMENT_START ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_ABICALLS ;
 int TARGET_IRIX ;
 scalar_t__ TARGET_LONG64 ;
 scalar_t__ TARGET_MIPS16 ;
 int asm_out_file ;
 int default_file_start () ;
 scalar_t__ flag_verbose_asm ;
 int fprintf (int ,char*,...) ;
 int gcc_unreachable () ;
 int mips_abi ;
 TYPE_1__* mips_arch_info ;
 int mips_isa ;
 int mips_section_threshold ;

__attribute__((used)) static void
mips_file_start (void)
{
  default_file_start ();

  if (!TARGET_IRIX)
    {







      const char * abi_string = ((void*)0);

      switch (mips_abi)
 {
 case 132: abi_string = "abi32"; break;
 case 129: abi_string = "abiN32"; break;
 case 131: abi_string = "abi64"; break;
 case 128: abi_string = "abiO64"; break;
 case 130: abi_string = TARGET_64BIT ? "eabi64" : "eabi32"; break;
 default:
   gcc_unreachable ();
 }




      fprintf (asm_out_file, "\t.section .mdebug.%s\n", abi_string);





      if (mips_abi == 130 || mips_abi == 128)
 fprintf (asm_out_file, "\t.section .gcc_compiled_long%d\n",
   TARGET_LONG64 ? 64 : 32);


      fprintf (asm_out_file, "\t.previous\n");
    }


  if (TARGET_ABICALLS)
    fprintf (asm_out_file, "\t.abicalls\n");

  if (TARGET_MIPS16)
    fprintf (asm_out_file, "\t.set\tmips16\n");

  if (flag_verbose_asm)
    fprintf (asm_out_file, "\n%s -G value = %d, Arch = %s, ISA = %d\n",
      ASM_COMMENT_START,
      mips_section_threshold, mips_arch_info->name, mips_isa);
}
