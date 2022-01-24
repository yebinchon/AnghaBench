#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_12__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {char* string; } ;
struct TYPE_29__ {TYPE_1__ root; } ;
struct elf_link_hash_entry {TYPE_10__ root; } ;
struct bfd_link_info {TYPE_2__* callbacks; scalar_t__ relocatable; } ;
struct TYPE_33__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ reloc_howto_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_reloc_status_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_34__ {int reloc_count; } ;
typedef  TYPE_4__ asection ;
struct TYPE_37__ {int /*<<< orphan*/  r_offset; int /*<<< orphan*/  r_addend; int /*<<< orphan*/  r_info; } ;
struct TYPE_36__ {unsigned long sh_info; int /*<<< orphan*/  sh_link; } ;
struct TYPE_35__ {int /*<<< orphan*/  st_name; } ;
struct TYPE_32__ {int /*<<< orphan*/  (* warning ) (struct bfd_link_info*,char const*,char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* undefined_symbol ) (struct bfd_link_info*,char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reloc_overflow ) (struct bfd_link_info*,TYPE_10__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_30__ {TYPE_6__ symtab_hdr; } ;
typedef  TYPE_5__ Elf_Internal_Sym ;
typedef  TYPE_6__ Elf_Internal_Shdr ;
typedef  TYPE_7__ Elf_Internal_Rela ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct bfd_link_info*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_7__*,unsigned long,TYPE_6__*,struct elf_link_hash_entry**,struct elf_link_hash_entry*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__**,TYPE_7__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  bfd_reloc_dangerous 132 
#define  bfd_reloc_notsupported 131 
 int bfd_reloc_ok ; 
#define  bfd_reloc_outofrange 130 
#define  bfd_reloc_overflow 129 
#define  bfd_reloc_undefined 128 
 char* FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfd_link_info*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* cr16_elf_howto_table ; 
 struct elf_link_hash_entry** FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_12__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct bfd_link_info*,TYPE_10__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bfd_link_info*,char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bfd_link_info*,char const*,char const*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (bfd *output_bfd, struct bfd_link_info *info,
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

  symtab_hdr = &FUNC9 (input_bfd)->symtab_hdr;
  sym_hashes = FUNC8 (input_bfd);

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

      r_symndx = FUNC0 (rel->r_info);
      r_type = FUNC1 (rel->r_info);
      howto = cr16_elf_howto_table + (r_type);

      h = NULL;
      sym = NULL;
      sec = NULL;
      if (r_symndx < symtab_hdr->sh_info)
        {
          sym = local_syms + r_symndx;
          sec = local_sections[r_symndx];
          relocation = FUNC4 (output_bfd, sym, &sec, rel);
        }
      else
        {
          bfd_boolean unresolved_reloc, warned;

          FUNC2 (info, input_bfd, input_section, rel,
                                   r_symndx, symtab_hdr, sym_hashes,
                                   h, sec, relocation,
                                   unresolved_reloc, warned);
        }

      r = FUNC7 (howto, input_bfd, output_bfd,
                                        input_section,
                                        contents, rel->r_offset,
                                        relocation, rel->r_addend,
                                        info, sec, h == NULL);

      if (r != bfd_reloc_ok)
        {
          const char *name;
          const char *msg = NULL;

          if (h != NULL)
            name = h->root.root.string;
          else
            {
              name = (FUNC5
                      (input_bfd, symtab_hdr->sh_link, sym->st_name));
              if (name == NULL || *name == '\0')
                name = FUNC6 (input_bfd, sec);
            }

          switch (r)
            {
             case bfd_reloc_overflow:
               if (!((*info->callbacks->reloc_overflow)
                     (info, (h ? &h->root : NULL), name, howto->name,
                      (bfd_vma) 0, input_bfd, input_section,
                      rel->r_offset)))
                 return FALSE;
               break;

             case bfd_reloc_undefined:
               if (!((*info->callbacks->undefined_symbol)
                     (info, name, input_bfd, input_section,
                      rel->r_offset, TRUE)))
                 return FALSE;
               break;

             case bfd_reloc_outofrange:
               msg = FUNC3("internal error: out of range error");
               goto common_error;

             case bfd_reloc_notsupported:
               msg = FUNC3("internal error: unsupported relocation error");
               goto common_error;

             case bfd_reloc_dangerous:
               msg = FUNC3("internal error: dangerous error");
               goto common_error;

             default:
               msg = FUNC3("internal error: unknown error");
               /* Fall through.  */

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