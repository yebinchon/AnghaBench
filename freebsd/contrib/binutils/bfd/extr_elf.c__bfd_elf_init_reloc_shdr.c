
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ asection ;
struct TYPE_8__ {unsigned int sh_name; int sh_addralign; scalar_t__ sh_offset; scalar_t__ sh_size; scalar_t__ sh_addr; scalar_t__ sh_flags; int sh_entsize; int sh_type; } ;
struct TYPE_6__ {int log_file_align; int sizeof_rel; int sizeof_rela; } ;
typedef TYPE_3__ Elf_Internal_Shdr ;


 scalar_t__ FALSE ;
 int SHT_REL ;
 int SHT_RELA ;
 scalar_t__ TRUE ;
 scalar_t__ _bfd_elf_strtab_add (int ,char*,scalar_t__) ;
 char* bfd_alloc (int *,int) ;
 int elf_shstrtab (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int sprintf (char*,char*,char*,int ) ;
 int strlen (int ) ;

bfd_boolean
_bfd_elf_init_reloc_shdr (bfd *abfd,
     Elf_Internal_Shdr *rel_hdr,
     asection *asect,
     bfd_boolean use_rela_p)
{
  char *name;
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);
  bfd_size_type amt = sizeof ".rela" + strlen (asect->name);

  name = bfd_alloc (abfd, amt);
  if (name == ((void*)0))
    return FALSE;
  sprintf (name, "%s%s", use_rela_p ? ".rela" : ".rel", asect->name);
  rel_hdr->sh_name =
    (unsigned int) _bfd_elf_strtab_add (elf_shstrtab (abfd), name,
     FALSE);
  if (rel_hdr->sh_name == (unsigned int) -1)
    return FALSE;
  rel_hdr->sh_type = use_rela_p ? SHT_RELA : SHT_REL;
  rel_hdr->sh_entsize = (use_rela_p
    ? bed->s->sizeof_rela
    : bed->s->sizeof_rel);
  rel_hdr->sh_addralign = 1 << bed->s->log_file_align;
  rel_hdr->sh_flags = 0;
  rel_hdr->sh_addr = 0;
  rel_hdr->sh_size = 0;
  rel_hdr->sh_offset = 0;

  return TRUE;
}
