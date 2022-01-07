
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int EF_IA_64_ABI64 ;
 int EF_IA_64_BE ;
 scalar_t__ OUTPUT_FLAVOR ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_1__ md ;

const char *
ia64_target_format ()
{
  if (OUTPUT_FLAVOR == bfd_target_elf_flavour)
    {
      if (md.flags & EF_IA_64_BE)
 {
   if (md.flags & EF_IA_64_ABI64)





     return "elf64-ia64-big";

   else





     return "elf32-ia64-big";

 }
      else
 {
   if (md.flags & EF_IA_64_ABI64)





     return "elf64-ia64-little";

   else



     return "elf32-ia64-little";

 }
    }
  else
    return "unknown-format";
}
