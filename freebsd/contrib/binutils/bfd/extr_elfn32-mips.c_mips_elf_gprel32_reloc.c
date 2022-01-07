
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_9__ {int flags; TYPE_2__* section; } ;
typedef TYPE_3__ asymbol ;
typedef int asection ;
typedef int arelent ;
struct TYPE_8__ {TYPE_1__* output_section; } ;
struct TYPE_7__ {int * owner; } ;


 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 int FALSE ;
 int TRUE ;
 scalar_t__ _ (char*) ;
 int _bfd_get_gp_value (int *) ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ bfd_reloc_outofrange ;
 scalar_t__ gprel32_with_gp (int *,TYPE_3__*,int *,int *,int ,void*,int ) ;
 scalar_t__ mips_elf_final_gp (int *,TYPE_3__*,int ,char**,int *) ;

__attribute__((used)) static bfd_reloc_status_type
mips_elf_gprel32_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
   void *data, asection *input_section, bfd *output_bfd,
   char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;


  if (output_bfd != ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
 _("32bits gp relative relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  if (output_bfd != ((void*)0))
    {
      relocatable = TRUE;
      gp = _bfd_get_gp_value (output_bfd);
    }
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;

      ret = mips_elf_final_gp (output_bfd, symbol, relocatable,
          error_message, &gp);
      if (ret != bfd_reloc_ok)
 return ret;
    }

  return gprel32_with_gp (abfd, symbol, reloc_entry, input_section,
     relocatable, data, gp);
}
