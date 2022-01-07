
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int arch; int mach; } ;
typedef TYPE_1__ bfd_arch_info_type ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;




 TYPE_1__* bfd_get_arch_info (int *) ;
 char const* bfd_printable_name (int *) ;
 int ieee_write_id (int *,char const*) ;

__attribute__((used)) static bfd_boolean
ieee_write_processor (bfd *abfd)
{
  const bfd_arch_info_type *arch;

  arch = bfd_get_arch_info (abfd);
  switch (arch->arch)
    {
    default:
      if (! ieee_write_id (abfd, bfd_printable_name (abfd)))
 return FALSE;
      break;

    case 161:
      if (! ieee_write_id (abfd, "H8/300"))
 return FALSE;
      break;

    case 160:
      if (! ieee_write_id (abfd, "H8/500"))
 return FALSE;
      break;

    case 159:
      switch (arch->mach)
 {
 default:
 case 155:
 case 154:
   if (! ieee_write_id (abfd, "80960KA"))
     return FALSE;
   break;

 case 153:
   if (! ieee_write_id (abfd, "80960KB"))
     return FALSE;
   break;

 case 156:
   if (! ieee_write_id (abfd, "80960CA"))
     return FALSE;
   break;

 case 152:
 case 151:
   if (! ieee_write_id (abfd, "80960MC"))
     return FALSE;
   break;
 }
      break;

    case 158:
      {
 const char *id;

 switch (arch->mach)
   {
   default: id = "68020"; break;
   case 150: id = "68000"; break;
   case 149: id = "68008"; break;
   case 148: id = "68010"; break;
   case 147: id = "68020"; break;
   case 146: id = "68030"; break;
   case 145: id = "68040"; break;
   case 144: id = "68060"; break;
   case 157: id = "cpu32"; break;
   case 140: id = "isa-a:nodiv"; break;
   case 143: id = "isa-a"; break;
   case 141: id = "isa-a:mac"; break;
   case 142: id = "isa-a:emac"; break;
   case 139: id = "isa-aplus"; break;
   case 137: id = "isa-aplus:mac"; break;
   case 138: id = "isa-aplus:mac"; break;
   case 130: id = "isa-b:nousp"; break;
   case 128: id = "isa-b:nousp:mac"; break;
   case 129: id = "isa-b:nousp:emac"; break;
   case 136: id = "isa-b"; break;
   case 131: id = "isa-b:mac"; break;
   case 135: id = "isa-b:emac"; break;
   case 134: id = "isa-b:float"; break;
   case 132: id = "isa-b:float:mac"; break;
   case 133: id = "isa-b:float:emac"; break;
   }

 if (! ieee_write_id (abfd, id))
   return FALSE;
      }
      break;
    }

  return TRUE;
}
