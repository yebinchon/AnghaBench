
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_filehdr {int f_magic; } ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
typedef int bfd_boolean ;
typedef int bfd ;
 int bfd_arch_alpha ;
 int bfd_arch_mips ;
 int bfd_arch_obscure ;
 int bfd_default_set_arch_mach (int *,int,unsigned long) ;
 unsigned long bfd_mach_mips3000 ;
 unsigned long bfd_mach_mips4000 ;
 unsigned long bfd_mach_mips6000 ;

bfd_boolean
_bfd_ecoff_set_arch_mach_hook (bfd *abfd, void * filehdr)
{
  struct internal_filehdr *internal_f = filehdr;
  enum bfd_architecture arch;
  unsigned long mach;

  switch (internal_f->f_magic)
    {
    case 134:
    case 130:
    case 133:
      arch = bfd_arch_mips;
      mach = bfd_mach_mips3000;
      break;

    case 129:
    case 132:

      arch = bfd_arch_mips;
      mach = bfd_mach_mips6000;
      break;

    case 128:
    case 131:

      arch = bfd_arch_mips;
      mach = bfd_mach_mips4000;
      break;

    case 135:
      arch = bfd_arch_alpha;
      mach = 0;
      break;

    default:
      arch = bfd_arch_obscure;
      mach = 0;
      break;
    }

  return bfd_default_set_arch_mach (abfd, arch, mach);
}
