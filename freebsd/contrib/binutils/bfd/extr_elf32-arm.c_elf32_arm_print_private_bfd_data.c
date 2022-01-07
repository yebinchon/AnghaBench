
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {unsigned long e_flags; } ;
typedef int FILE ;


 int BFD_ASSERT (int) ;
 unsigned long EF_ARM_APCS_26 ;
 unsigned long EF_ARM_APCS_FLOAT ;
 unsigned long EF_ARM_BE8 ;
 unsigned long EF_ARM_DYNSYMSUSESEGIDX ;
 unsigned long EF_ARM_EABIMASK ;






 int EF_ARM_EABI_VERSION (unsigned long) ;
 unsigned long EF_ARM_HASENTRY ;
 unsigned long EF_ARM_INTERWORK ;
 unsigned long EF_ARM_LE8 ;
 unsigned long EF_ARM_MAPSYMSFIRST ;
 unsigned long EF_ARM_MAVERICK_FLOAT ;
 unsigned long EF_ARM_NEW_ABI ;
 unsigned long EF_ARM_OLD_ABI ;
 unsigned long EF_ARM_PIC ;
 unsigned long EF_ARM_RELEXEC ;
 unsigned long EF_ARM_SOFT_FLOAT ;
 unsigned long EF_ARM_SYMSARESORTED ;
 unsigned long EF_ARM_VFP_FLOAT ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_elf_print_private_bfd_data (int *,void*) ;
 TYPE_1__* elf_elfheader (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_print_private_bfd_data (bfd *abfd, void * ptr)
{
  FILE * file = (FILE *) ptr;
  unsigned long flags;

  BFD_ASSERT (abfd != ((void*)0) && ptr != ((void*)0));


  _bfd_elf_print_private_bfd_data (abfd, ptr);

  flags = elf_elfheader (abfd)->e_flags;




  fprintf (file, _("private flags = %lx:"), elf_elfheader (abfd)->e_flags);

  switch (EF_ARM_EABI_VERSION (flags))
    {
    case 133:



      if (flags & EF_ARM_INTERWORK)
 fprintf (file, _(" [interworking enabled]"));

      if (flags & EF_ARM_APCS_26)
 fprintf (file, " [APCS-26]");
      else
 fprintf (file, " [APCS-32]");

      if (flags & EF_ARM_VFP_FLOAT)
 fprintf (file, _(" [VFP float format]"));
      else if (flags & EF_ARM_MAVERICK_FLOAT)
 fprintf (file, _(" [Maverick float format]"));
      else
 fprintf (file, _(" [FPA float format]"));

      if (flags & EF_ARM_APCS_FLOAT)
 fprintf (file, _(" [floats passed in float registers]"));

      if (flags & EF_ARM_PIC)
 fprintf (file, _(" [position independent]"));

      if (flags & EF_ARM_NEW_ABI)
 fprintf (file, _(" [new ABI]"));

      if (flags & EF_ARM_OLD_ABI)
 fprintf (file, _(" [old ABI]"));

      if (flags & EF_ARM_SOFT_FLOAT)
 fprintf (file, _(" [software FP]"));

      flags &= ~(EF_ARM_INTERWORK | EF_ARM_APCS_26 | EF_ARM_APCS_FLOAT
   | EF_ARM_PIC | EF_ARM_NEW_ABI | EF_ARM_OLD_ABI
   | EF_ARM_SOFT_FLOAT | EF_ARM_VFP_FLOAT
   | EF_ARM_MAVERICK_FLOAT);
      break;

    case 132:
      fprintf (file, _(" [Version1 EABI]"));

      if (flags & EF_ARM_SYMSARESORTED)
 fprintf (file, _(" [sorted symbol table]"));
      else
 fprintf (file, _(" [unsorted symbol table]"));

      flags &= ~ EF_ARM_SYMSARESORTED;
      break;

    case 131:
      fprintf (file, _(" [Version2 EABI]"));

      if (flags & EF_ARM_SYMSARESORTED)
 fprintf (file, _(" [sorted symbol table]"));
      else
 fprintf (file, _(" [unsorted symbol table]"));

      if (flags & EF_ARM_DYNSYMSUSESEGIDX)
 fprintf (file, _(" [dynamic symbols use segment index]"));

      if (flags & EF_ARM_MAPSYMSFIRST)
 fprintf (file, _(" [mapping symbols precede others]"));

      flags &= ~(EF_ARM_SYMSARESORTED | EF_ARM_DYNSYMSUSESEGIDX
   | EF_ARM_MAPSYMSFIRST);
      break;

    case 130:
      fprintf (file, _(" [Version3 EABI]"));
      break;

    case 129:
      fprintf (file, _(" [Version4 EABI]"));
      goto eabi;

    case 128:
      fprintf (file, _(" [Version5 EABI]"));
    eabi:
      if (flags & EF_ARM_BE8)
 fprintf (file, _(" [BE8]"));

      if (flags & EF_ARM_LE8)
 fprintf (file, _(" [LE8]"));

      flags &= ~(EF_ARM_LE8 | EF_ARM_BE8);
      break;

    default:
      fprintf (file, _(" <EABI version unrecognised>"));
      break;
    }

  flags &= ~ EF_ARM_EABIMASK;

  if (flags & EF_ARM_RELEXEC)
    fprintf (file, _(" [relocatable executable]"));

  if (flags & EF_ARM_HASENTRY)
    fprintf (file, _(" [has entry point]"));

  flags &= ~ (EF_ARM_RELEXEC | EF_ARM_HASENTRY);

  if (flags)
    fprintf (file, _("<Unrecognised flag bits set>"));

  fputc ('\n', file);

  return TRUE;
}
