
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd ;
struct TYPE_2__ {int e_flags; } ;


 int EF_MIPS_ARCH ;
 int EF_MIPS_MACH ;
 int E_MIPS_ARCH_1 ;
 int E_MIPS_ARCH_2 ;
 int E_MIPS_ARCH_3 ;
 int E_MIPS_ARCH_32 ;
 int E_MIPS_ARCH_32R2 ;
 int E_MIPS_ARCH_4 ;
 int E_MIPS_ARCH_5 ;
 int E_MIPS_ARCH_64 ;
 int E_MIPS_ARCH_64R2 ;
 int E_MIPS_MACH_3900 ;
 int E_MIPS_MACH_4010 ;
 int E_MIPS_MACH_4100 ;
 int E_MIPS_MACH_4111 ;
 int E_MIPS_MACH_4120 ;
 int E_MIPS_MACH_4650 ;
 int E_MIPS_MACH_5400 ;
 int E_MIPS_MACH_5500 ;
 int E_MIPS_MACH_9000 ;
 int E_MIPS_MACH_OCTEON ;
 int E_MIPS_MACH_SB1 ;
 int bfd_get_mach (int *) ;
 TYPE_1__* elf_elfheader (int *) ;

__attribute__((used)) static void
mips_set_isa_flags (bfd *abfd)
{
  flagword val;

  switch (bfd_get_mach (abfd))
    {
    default:
    case 152:
      val = E_MIPS_ARCH_1;
      break;

    case 151:
      val = E_MIPS_ARCH_1 | E_MIPS_MACH_3900;
      break;

    case 137:
      val = E_MIPS_ARCH_2;
      break;

    case 150:
    case 145:
    case 144:
    case 143:
      val = E_MIPS_ARCH_3;
      break;

    case 149:
      val = E_MIPS_ARCH_3 | E_MIPS_MACH_4010;
      break;

    case 148:
      val = E_MIPS_ARCH_3 | E_MIPS_MACH_4100;
      break;

    case 147:
      val = E_MIPS_ARCH_3 | E_MIPS_MACH_4111;
      break;

    case 146:
      val = E_MIPS_ARCH_3 | E_MIPS_MACH_4120;
      break;

    case 142:
      val = E_MIPS_ARCH_3 | E_MIPS_MACH_4650;
      break;

    case 139:
      val = E_MIPS_ARCH_4 | E_MIPS_MACH_5400;
      break;

    case 138:
      val = E_MIPS_ARCH_4 | E_MIPS_MACH_5500;
      break;

    case 134:
      val = E_MIPS_ARCH_4 | E_MIPS_MACH_9000;
      break;

    case 140:
    case 136:
    case 135:
    case 154:
    case 153:
      val = E_MIPS_ARCH_4;
      break;

    case 141:
      val = E_MIPS_ARCH_5;
      break;

    case 133:
      val = E_MIPS_ARCH_64R2 | E_MIPS_MACH_OCTEON;
      break;

    case 132:
      val = E_MIPS_ARCH_64 | E_MIPS_MACH_SB1;
      break;

    case 131:
      val = E_MIPS_ARCH_32;
      break;

    case 129:
      val = E_MIPS_ARCH_64;
      break;

    case 130:
      val = E_MIPS_ARCH_32R2;
      break;

    case 128:
      val = E_MIPS_ARCH_64R2;
      break;
    }
  elf_elfheader (abfd)->e_flags &= ~(EF_MIPS_ARCH | EF_MIPS_MACH);
  elf_elfheader (abfd)->e_flags |= val;

}
