
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_79__ TYPE_9__ ;
typedef struct TYPE_78__ TYPE_8__ ;
typedef struct TYPE_77__ TYPE_7__ ;
typedef struct TYPE_76__ TYPE_6__ ;
typedef struct TYPE_75__ TYPE_5__ ;
typedef struct TYPE_74__ TYPE_4__ ;
typedef struct TYPE_73__ TYPE_3__ ;
typedef struct TYPE_72__ TYPE_39__ ;
typedef struct TYPE_71__ TYPE_36__ ;
typedef struct TYPE_70__ TYPE_2__ ;
typedef struct TYPE_69__ TYPE_1__ ;
typedef struct TYPE_68__ TYPE_15__ ;
typedef struct TYPE_67__ TYPE_14__ ;
typedef struct TYPE_66__ TYPE_13__ ;
typedef struct TYPE_65__ TYPE_12__ ;
typedef struct TYPE_64__ TYPE_11__ ;
typedef struct TYPE_63__ TYPE_10__ ;


struct TYPE_75__ {char* string; } ;
struct TYPE_73__ {int value; TYPE_11__* section; } ;
struct TYPE_69__ {scalar_t__ link; } ;
struct TYPE_74__ {TYPE_3__ def; TYPE_1__ i; } ;
struct TYPE_76__ {scalar_t__ type; TYPE_5__ root; TYPE_4__ u; } ;
struct TYPE_77__ {TYPE_6__ root; int other; } ;
struct score_elf_link_hash_entry {TYPE_7__ root; } ;
struct elf_link_hash_entry {int dummy; } ;
struct elf_backend_data {int (* elf_backend_omit_section_dynsym ) (TYPE_10__*,struct bfd_link_info*,TYPE_11__*) ;} ;
struct bfd_link_info {scalar_t__ unresolved_syms_in_objects; TYPE_8__* callbacks; scalar_t__ relocatable; scalar_t__ shared; } ;
struct TYPE_79__ {unsigned long dst_mask; int src_mask; int name; } ;
typedef TYPE_9__ reloc_howto_type ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_signed_vma ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
struct TYPE_63__ {TYPE_11__* sections; } ;
typedef TYPE_10__ bfd ;
struct TYPE_64__ {int flags; int reloc_count; int output_offset; TYPE_2__* output_section; struct TYPE_64__* next; } ;
typedef TYPE_11__ asection ;
struct TYPE_65__ {TYPE_9__* howto; } ;
typedef TYPE_12__ arelent ;
struct TYPE_78__ {int (* warning ) (struct bfd_link_info*,char const*,char const*,TYPE_10__*,TYPE_11__*,int) ;int (* undefined_symbol ) (struct bfd_link_info*,char const*,TYPE_10__*,TYPE_11__*,int,int) ;int (* reloc_overflow ) (struct bfd_link_info*,int *,char const*,int ,int,TYPE_10__*,TYPE_11__*,int) ;} ;
struct TYPE_72__ {scalar_t__ dynamic_sections_created; } ;
struct TYPE_67__ {size_t sh_info; } ;
struct TYPE_71__ {TYPE_14__ symtab_hdr; } ;
struct TYPE_70__ {int vma; } ;
struct TYPE_68__ {int r_offset; scalar_t__ r_addend; scalar_t__ r_info; } ;
struct TYPE_66__ {int st_value; unsigned int st_info; } ;
typedef TYPE_13__ Elf_Internal_Sym ;
typedef TYPE_14__ Elf_Internal_Shdr ;
typedef TYPE_15__ Elf_Internal_Rela ;


 int BFD_ASSERT (int) ;
 unsigned long ELF32_R_SYM (scalar_t__) ;
 int ELF32_R_TYPE (scalar_t__) ;
 scalar_t__ ELF_ST_TYPE (unsigned int) ;
 scalar_t__ ELF_ST_VISIBILITY (int ) ;
 int FALSE ;
 char* GP_DISP_LABEL ;
 scalar_t__ RM_GENERATE_ERROR ;
 scalar_t__ RM_IGNORE ;



 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_MERGE ;
 scalar_t__ STT_SECTION ;
 scalar_t__ STV_DEFAULT ;
 int TRUE ;
 char* _ (char*) ;
 int _bfd_clear_contents (TYPE_9__*,TYPE_10__*,int *) ;
 int _bfd_elf_rel_local_sym (TYPE_10__*,TYPE_13__*,TYPE_11__**,int) ;
 int _bfd_score_info_to_howto (TYPE_10__*,TYPE_12__*,TYPE_15__*) ;
 char* bfd_elf_sym_name (TYPE_10__*,TYPE_14__*,TYPE_13__*,TYPE_11__*) ;
 void* bfd_get_32 (TYPE_10__*,int *) ;
 int * bfd_get_section_by_name (TYPE_10__*,char*) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;
 scalar_t__ bfd_link_hash_warning ;
 int bfd_put_32 (TYPE_10__*,int,int *) ;


 int bfd_reloc_ok ;



 scalar_t__ elf_bad_symtab (TYPE_10__*) ;
 scalar_t__ elf_discarded_section (TYPE_11__*) ;
 TYPE_39__* elf_hash_table (struct bfd_link_info*) ;
 struct elf_link_hash_entry** elf_sym_hashes (TYPE_10__*) ;
 TYPE_36__* elf_tdata (TYPE_10__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_10__*) ;
 int score_elf_add_to_rel (TYPE_10__*,int *,TYPE_9__*,int) ;
 int score_elf_final_link_relocate (TYPE_9__*,TYPE_10__*,TYPE_10__*,TYPE_11__*,int *,TYPE_15__*,TYPE_15__*,int,struct bfd_link_info*,char const*,scalar_t__,struct score_elf_link_hash_entry*,TYPE_11__**,int) ;
 int score_elf_sort_hash_table (struct bfd_link_info*,scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (TYPE_10__*,struct bfd_link_info*,TYPE_11__*) ;
 int stub2 (struct bfd_link_info*,char const*,TYPE_10__*,TYPE_11__*,int,int) ;
 int stub3 (struct bfd_link_info*,int *,char const*,int ,int,TYPE_10__*,TYPE_11__*,int) ;
 int stub4 (struct bfd_link_info*,char const*,TYPE_10__*,TYPE_11__*,int,int) ;
 int stub5 (struct bfd_link_info*,char const*,char const*,TYPE_10__*,TYPE_11__*,int) ;

__attribute__((used)) static bfd_boolean
_bfd_score_elf_relocate_section (bfd *output_bfd,
            struct bfd_link_info *info,
            bfd *input_bfd,
            asection *input_section,
            bfd_byte *contents,
            Elf_Internal_Rela *relocs,
            Elf_Internal_Sym *local_syms,
            asection **local_sections)
{
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  Elf_Internal_Rela *rel;
  Elf_Internal_Rela *relend;
  const char *name;
  unsigned long offset;
  unsigned long hi16_addend, hi16_offset, hi16_value, uvalue;
  size_t extsymoff;
  bfd_boolean gp_disp_p = FALSE;


  if (elf_hash_table (info)->dynamic_sections_created)
    {
      bfd_size_type dynsecsymcount = 0;
      if (info->shared)
 {
   asection * p;
   const struct elf_backend_data *bed = get_elf_backend_data (output_bfd);

   for (p = output_bfd->sections; p ; p = p->next)
     if ((p->flags & SEC_EXCLUDE) == 0
  && (p->flags & SEC_ALLOC) != 0
  && !(*bed->elf_backend_omit_section_dynsym) (output_bfd, info, p))
       ++ dynsecsymcount;
 }

      if (!score_elf_sort_hash_table (info, dynsecsymcount + 1))
 return FALSE;
    }

  symtab_hdr = &elf_tdata (input_bfd)->symtab_hdr;
  extsymoff = (elf_bad_symtab (input_bfd)) ? 0 : symtab_hdr->sh_info;
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
      struct score_elf_link_hash_entry *h;
      bfd_vma relocation = 0;
      bfd_reloc_status_type r;
      arelent bfd_reloc;

      r_symndx = ELF32_R_SYM (rel->r_info);
      r_type = ELF32_R_TYPE (rel->r_info);

      _bfd_score_info_to_howto (input_bfd, &bfd_reloc, (Elf_Internal_Rela *) rel);
      howto = bfd_reloc.howto;

      h = ((void*)0);
      sym = ((void*)0);
      sec = ((void*)0);

      if (r_symndx < extsymoff)
        {
          sym = local_syms + r_symndx;
          sec = local_sections[r_symndx];
          relocation = (sec->output_section->vma
   + sec->output_offset
   + sym->st_value);
          name = bfd_elf_sym_name (input_bfd, symtab_hdr, sym, sec);

          if (!info->relocatable
       && (sec->flags & SEC_MERGE) != 0
       && ELF_ST_TYPE (sym->st_info) == STT_SECTION)
            {
              asection *msec;
              bfd_vma addend, value;

              switch (r_type)
                {
                case 134:
                  break;
                case 133:
                  hi16_addend = bfd_get_32 (input_bfd, contents + rel->r_offset - 4);
                  hi16_offset = ((((hi16_addend >> 16) & 0x3) << 15) | (hi16_addend & 0x7fff)) >> 1;
                  value = bfd_get_32 (input_bfd, contents + rel->r_offset);
                  offset = ((((value >> 16) & 0x3) << 15) | (value & 0x7fff)) >> 1;
                  addend = (hi16_offset << 16) | (offset & 0xffff);
                  msec = sec;
                  addend = _bfd_elf_rel_local_sym (output_bfd, sym, &msec, addend);
                  addend -= relocation;
                  addend += msec->output_section->vma + msec->output_offset;
                  uvalue = addend;
                  hi16_offset = (uvalue >> 16) << 1;
                  hi16_value = (hi16_addend & (~(howto->dst_mask)))
                    | (hi16_offset & 0x7fff) | ((hi16_offset << 1) & 0x30000);
                  bfd_put_32 (input_bfd, hi16_value, contents + rel->r_offset - 4);
                  offset = (uvalue & 0xffff) << 1;
                  value = (value & (~(howto->dst_mask)))
                    | (offset & 0x7fff) | ((offset << 1) & 0x30000);
                  bfd_put_32 (input_bfd, value, contents + rel->r_offset);
                  break;
                case 135:
                  value = bfd_get_32 (input_bfd, contents + rel->r_offset);
                  addend = (((value >> 16) & 0x3) << 14) | ((value & 0x7fff) >> 1);
                  msec = sec;
                  addend = _bfd_elf_rel_local_sym (output_bfd, sym, &msec, addend) - relocation;
                  addend += msec->output_section->vma + msec->output_offset;
                  value = (value & (~(howto->dst_mask))) | ((addend & 0x3fff) << 1)
                           | (((addend >> 14) & 0x3) << 16);

                  bfd_put_32 (input_bfd, value, contents + rel->r_offset);
                  break;
                default:
                  value = bfd_get_32 (input_bfd, contents + rel->r_offset);

                  addend = value & howto->src_mask;
                  if (addend & ((howto->src_mask + 1) >> 1))
                    {
                      bfd_signed_vma mask;

                      mask = -1;
                      mask &= ~howto->src_mask;
                      addend |= mask;
                    }
                  msec = sec;
                  addend = _bfd_elf_rel_local_sym (output_bfd, sym, &msec, addend) - relocation;
                  addend += msec->output_section->vma + msec->output_offset;
                  value = (value & ~howto->dst_mask) | (addend & howto->dst_mask);
                  bfd_put_32 (input_bfd, value, contents + rel->r_offset);
                  break;
                }
            }
        }
      else
        {

   h = ((struct score_elf_link_hash_entry *)
        elf_sym_hashes (input_bfd) [r_symndx - extsymoff]);

   while (h->root.root.type == bfd_link_hash_indirect
   || h->root.root.type == bfd_link_hash_warning)
     h = (struct score_elf_link_hash_entry *) h->root.root.u.i.link;


   name = h->root.root.root.string;



   if (strcmp (name, GP_DISP_LABEL) == 0)
     {


       if (r_type != 134 && r_type != 133)
  return 131;

       gp_disp_p = TRUE;
     }





   else if ((h->root.root.type == bfd_link_hash_defined
      || h->root.root.type == bfd_link_hash_defweak)
     && h->root.root.u.def.section)
     {
       sec = h->root.root.u.def.section;
       if (sec->output_section)
  relocation = (h->root.root.u.def.value
         + sec->output_section->vma
         + sec->output_offset);
       else
  {
    relocation = h->root.root.u.def.value;
  }
     }
   else if (h->root.root.type == bfd_link_hash_undefweak)



     relocation = 0;
   else if (info->unresolved_syms_in_objects == RM_IGNORE
     && ELF_ST_VISIBILITY (h->root.other) == STV_DEFAULT)
     relocation = 0;
   else if (strcmp (name, "_DYNAMIC_LINK") == 0)
     {



       BFD_ASSERT (! info->shared);
       BFD_ASSERT (bfd_get_section_by_name (output_bfd, ".dynamic") == ((void*)0));
       relocation = 0;
     }
   else if (!info->relocatable)
     {
       if (! ((*info->callbacks->undefined_symbol)
       (info, h->root.root.root.string, input_bfd,
        input_section, rel->r_offset,
        (info->unresolved_syms_in_objects == RM_GENERATE_ERROR)
        || ELF_ST_VISIBILITY (h->root.other))))
  return 128;
       relocation = 0;
     }
        }

      if (sec != ((void*)0) && elf_discarded_section (sec))
 {



   _bfd_clear_contents (howto, input_bfd, contents + rel->r_offset);
   rel->r_info = 0;
   rel->r_addend = 0;
   continue;
 }

      if (info->relocatable)
        {




          if (sym != ((void*)0) && ELF_ST_TYPE (sym->st_info) == STT_SECTION)
     score_elf_add_to_rel (input_bfd, contents + rel->r_offset,
      howto, (bfd_signed_vma) sec->output_offset);
          continue;
        }

      r = score_elf_final_link_relocate (howto, input_bfd, output_bfd,
                                         input_section, contents, rel, relocs,
                                         relocation, info, name,
                                         (h ? ELF_ST_TYPE ((unsigned int)h->root.root.type) :
      ELF_ST_TYPE ((unsigned int)sym->st_info)), h, local_sections,
                                         gp_disp_p);

      if (r != bfd_reloc_ok)
        {
          const char *msg = (const char *)0;

          switch (r)
            {
            case 129:



              if (((!h) || (h->root.root.type != bfd_link_hash_undefined))
                  && (!((*info->callbacks->reloc_overflow)
                        (info, ((void*)0), name, howto->name, (bfd_vma) 0,
                         input_bfd, input_section, rel->r_offset))))
                return FALSE;
              break;
            case 128:
              if (!((*info->callbacks->undefined_symbol)
                    (info, name, input_bfd, input_section, rel->r_offset, TRUE)))
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
                    (info, msg, name, input_bfd, input_section, rel->r_offset)))
                return FALSE;
              break;
            }
        }
    }

  return TRUE;
}
