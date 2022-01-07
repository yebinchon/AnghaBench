
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {scalar_t__ mach; void* private_data; scalar_t__ disassembler_options; } ;


 int BFD_DEFAULT_TARGET_SIZE ;
 int PPC_OPCODE_32 ;
 int PPC_OPCODE_403 ;
 int PPC_OPCODE_440 ;
 int PPC_OPCODE_601 ;
 int PPC_OPCODE_64 ;
 int PPC_OPCODE_ALTIVEC ;
 int PPC_OPCODE_ANY ;
 int PPC_OPCODE_BOOKE ;
 int PPC_OPCODE_BOOKE64 ;
 int PPC_OPCODE_BRLOCK ;
 int PPC_OPCODE_CACHELCK ;
 int PPC_OPCODE_CELL ;
 int PPC_OPCODE_CLASSIC ;
 int PPC_OPCODE_COMMON ;
 int PPC_OPCODE_E300 ;
 int PPC_OPCODE_EFS ;
 int PPC_OPCODE_ISEL ;
 int PPC_OPCODE_PMR ;
 int PPC_OPCODE_POWER4 ;
 int PPC_OPCODE_POWER5 ;
 int PPC_OPCODE_POWER6 ;
 int PPC_OPCODE_PPC ;
 int PPC_OPCODE_RFMCI ;
 int PPC_OPCODE_SPE ;
 scalar_t__ bfd_mach_ppc_e500 ;
 int * strstr (scalar_t__,char*) ;

__attribute__((used)) static int
powerpc_dialect (struct disassemble_info *info)
{
  int dialect = PPC_OPCODE_PPC;

  if (BFD_DEFAULT_TARGET_SIZE == 64)
    dialect |= PPC_OPCODE_64;

  if (info->disassembler_options
      && strstr (info->disassembler_options, "booke") != ((void*)0))
    dialect |= PPC_OPCODE_BOOKE | PPC_OPCODE_BOOKE64;
  else if ((info->mach == bfd_mach_ppc_e500)
    || (info->disassembler_options
        && strstr (info->disassembler_options, "e500") != ((void*)0)))
    dialect |= (PPC_OPCODE_BOOKE
  | PPC_OPCODE_SPE | PPC_OPCODE_ISEL
  | PPC_OPCODE_EFS | PPC_OPCODE_BRLOCK
  | PPC_OPCODE_PMR | PPC_OPCODE_CACHELCK
  | PPC_OPCODE_RFMCI);
  else if (info->disassembler_options
    && strstr (info->disassembler_options, "efs") != ((void*)0))
    dialect |= PPC_OPCODE_EFS;
  else if (info->disassembler_options
    && strstr (info->disassembler_options, "e300") != ((void*)0))
    dialect |= PPC_OPCODE_E300 | PPC_OPCODE_CLASSIC | PPC_OPCODE_COMMON;
  else if (info->disassembler_options
    && strstr (info->disassembler_options, "440") != ((void*)0))
    dialect |= PPC_OPCODE_BOOKE | PPC_OPCODE_32
      | PPC_OPCODE_440 | PPC_OPCODE_ISEL | PPC_OPCODE_RFMCI;
  else
    dialect |= (PPC_OPCODE_403 | PPC_OPCODE_601 | PPC_OPCODE_CLASSIC
  | PPC_OPCODE_COMMON | PPC_OPCODE_ALTIVEC);

  if (info->disassembler_options
      && strstr (info->disassembler_options, "power4") != ((void*)0))
    dialect |= PPC_OPCODE_POWER4;

  if (info->disassembler_options
      && strstr (info->disassembler_options, "power5") != ((void*)0))
    dialect |= PPC_OPCODE_POWER4 | PPC_OPCODE_POWER5;

  if (info->disassembler_options
      && strstr (info->disassembler_options, "cell") != ((void*)0))
    dialect |= PPC_OPCODE_POWER4 | PPC_OPCODE_CELL | PPC_OPCODE_ALTIVEC;

  if (info->disassembler_options
      && strstr (info->disassembler_options, "power6") != ((void*)0))
    dialect |= PPC_OPCODE_POWER4 | PPC_OPCODE_POWER5 | PPC_OPCODE_POWER6 | PPC_OPCODE_ALTIVEC;

  if (info->disassembler_options
      && strstr (info->disassembler_options, "any") != ((void*)0))
    dialect |= PPC_OPCODE_ANY;

  if (info->disassembler_options)
    {
      if (strstr (info->disassembler_options, "32") != ((void*)0))
 dialect &= ~PPC_OPCODE_64;
      else if (strstr (info->disassembler_options, "64") != ((void*)0))
 dialect |= PPC_OPCODE_64;
    }

  info->private_data = (void *)(uintptr_t)dialect;
  return dialect;
}
