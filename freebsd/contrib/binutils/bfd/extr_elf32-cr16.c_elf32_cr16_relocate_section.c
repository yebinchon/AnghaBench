
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_10__ ;


struct TYPE_31__ {char* string; } ;
struct TYPE_29__ {TYPE_1__ root; } ;
struct elf_link_hash_entry {TYPE_10__ root; } ;
struct bfd_link_info {TYPE_2__* callbacks; scalar_t__ relocatable; } ;
struct TYPE_33__ {int name; } ;
typedef TYPE_3__ reloc_howto_type ;
typedef int bfd_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_34__ {int reloc_count; } ;
typedef TYPE_4__ asection ;
struct TYPE_37__ {int r_offset; int r_addend; int r_info; } ;
struct TYPE_36__ {unsigned long sh_info; int sh_link; } ;
struct TYPE_35__ {int st_name; } ;
struct TYPE_32__ {int (* warning ) (struct bfd_link_info*,char const*,char const*,int *,TYPE_4__*,int ) ;int (* undefined_symbol ) (struct bfd_link_info*,char const*,int *,TYPE_4__*,int ,int ) ;int (* reloc_overflow ) (struct bfd_link_info*,TYPE_10__*,char const*,int ,int ,int *,TYPE_4__*,int ) ;} ;
struct TYPE_30__ {TYPE_6__ symtab_hdr; } ;
typedef TYPE_5__ Elf_Internal_Sym ;
typedef TYPE_6__ Elf_Internal_Shdr ;
typedef TYPE_7__ Elf_Internal_Rela ;


 unsigned long ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int FALSE ;
 int RELOC_FOR_GLOBAL_SYMBOL (struct bfd_link_info*,int *,TYPE_4__*,TYPE_7__*,unsigned long,TYPE_6__*,struct elf_link_hash_entry**,struct elf_link_hash_entry*,TYPE_4__*,int ,int ,int ) ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_elf_rela_local_sym (int *,TYPE_5__*,TYPE_4__**,TYPE_7__*) ;
 char* bfd_elf_string_from_elf_section (int *,int ,int ) ;


 int bfd_reloc_ok ;



 char* bfd_section_name (int *,TYPE_4__*) ;
 int cr16_elf_final_link_relocate (TYPE_3__*,int *,int *,TYPE_4__*,int *,int ,int ,int ,struct bfd_link_info*,TYPE_4__*,int ) ;
 TYPE_3__* cr16_elf_howto_table ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_12__* elf_tdata (int *) ;
 int stub1 (struct bfd_link_info*,TYPE_10__*,char const*,int ,int ,int *,TYPE_4__*,int ) ;
 int stub2 (struct bfd_link_info*,char const*,int *,TYPE_4__*,int ,int ) ;
 int stub3 (struct bfd_link_info*,char const*,char const*,int *,TYPE_4__*,int ) ;

__attribute__((used)) static bfd_boolean
elf32_cr16_relocate_section (bfd *output_bfd, struct bfd_link_info *info,
                            bfd *input_bfd, asection *input_section,
                            bfd_byte *contents, Elf_Internal_Rela *relocs,
                            Elf_Internal_Sym *local_syms,
                            asection **local_sections)
{
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  Elf_Internal_Rela *rel, *relend;

  if (info->relocatable)
    return TRUE;

  symtab_hdr = &elf_tdata (input_bfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (input_bfd);

  rel = relocs;
  relend = relocs + input_section->reloc_count;
  for (; rel < relend; rel++)
    {
      int r_type;
      reloc_howto_type *howto;
      unsigned long r_symndx;
      Elf_Internal_Sym *sym;
      asection *sec;
      struct elf_link_hash_entry *h;
      bfd_vma relocation;
      bfd_reloc_status_type r;

      r_symndx = ELF32_R_SYM (rel->r_info);
      r_type = ELF32_R_TYPE (rel->r_info);
      howto = cr16_elf_howto_table + (r_type);

      h = ((void*)0);
      sym = ((void*)0);
      sec = ((void*)0);
      if (r_symndx < symtab_hdr->sh_info)
        {
          sym = local_syms + r_symndx;
          sec = local_sections[r_symndx];
          relocation = _bfd_elf_rela_local_sym (output_bfd, sym, &sec, rel);
        }
      else
        {
          bfd_boolean unresolved_reloc, warned;

          RELOC_FOR_GLOBAL_SYMBOL (info, input_bfd, input_section, rel,
                                   r_symndx, symtab_hdr, sym_hashes,
                                   h, sec, relocation,
                                   unresolved_reloc, warned);
        }

      r = cr16_elf_final_link_relocate (howto, input_bfd, output_bfd,
                                        input_section,
                                        contents, rel->r_offset,
                                        relocation, rel->r_addend,
                                        info, sec, h == ((void*)0));

      if (r != bfd_reloc_ok)
        {
          const char *name;
          const char *msg = ((void*)0);

          if (h != ((void*)0))
            name = h->root.root.string;
          else
            {
              name = (bfd_elf_string_from_elf_section
                      (input_bfd, symtab_hdr->sh_link, sym->st_name));
              if (name == ((void*)0) || *name == '\0')
                name = bfd_section_name (input_bfd, sec);
            }

          switch (r)
            {
             case 129:
               if (!((*info->callbacks->reloc_overflow)
                     (info, (h ? &h->root : ((void*)0)), name, howto->name,
                      (bfd_vma) 0, input_bfd, input_section,
                      rel->r_offset)))
                 return FALSE;
               break;

             case 128:
               if (!((*info->callbacks->undefined_symbol)
                     (info, name, input_bfd, input_section,
                      rel->r_offset, TRUE)))
                 return FALSE;
               break;

             case 130:
               msg = _("internal error: out of range error");
               goto common_error;

             case 131:
               msg = _("internal error: unsupported relocation error");
               goto common_error;

             case 132:
               msg = _("internal error: dangerous error");
               goto common_error;

             default:
               msg = _("internal error: unknown error");


             common_error:
               if (!((*info->callbacks->warning)
                     (info, msg, name, input_bfd, input_section,
                      rel->r_offset)))
                 return FALSE;
               break;
            }
        }
    }

  return TRUE;
}
