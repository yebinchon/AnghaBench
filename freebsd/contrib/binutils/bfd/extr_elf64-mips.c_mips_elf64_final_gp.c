
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_6__ {int flags; TYPE_4__* section; } ;
typedef TYPE_2__ asymbol ;
struct TYPE_7__ {TYPE_1__* output_section; } ;
struct TYPE_5__ {scalar_t__ vma; } ;


 int BSF_SECTION_SYM ;
 scalar_t__ _ (char*) ;
 scalar_t__ _bfd_get_gp_value (int *) ;
 int _bfd_set_gp_value (int *,scalar_t__) ;
 scalar_t__ bfd_is_und_section (TYPE_4__*) ;
 int bfd_reloc_dangerous ;
 int bfd_reloc_ok ;
 int bfd_reloc_undefined ;
 int mips_elf64_assign_gp (int *,scalar_t__*) ;

__attribute__((used)) static bfd_reloc_status_type
mips_elf64_final_gp (bfd *output_bfd, asymbol *symbol, bfd_boolean relocatable,
       char **error_message, bfd_vma *pgp)
{
  if (bfd_is_und_section (symbol->section)
      && ! relocatable)
    {
      *pgp = 0;
      return bfd_reloc_undefined;
    }

  *pgp = _bfd_get_gp_value (output_bfd);
  if (*pgp == 0
      && (! relocatable
   || (symbol->flags & BSF_SECTION_SYM) != 0))
    {
      if (relocatable)
 {

   *pgp = symbol->section->output_section->vma ;
   _bfd_set_gp_value (output_bfd, *pgp);
 }
      else if (!mips_elf64_assign_gp (output_bfd, pgp))
 {
   *error_message =
     (char *) _("GP relative relocation when _gp not defined");
   return bfd_reloc_dangerous;
 }
    }

  return bfd_reloc_ok;
}
