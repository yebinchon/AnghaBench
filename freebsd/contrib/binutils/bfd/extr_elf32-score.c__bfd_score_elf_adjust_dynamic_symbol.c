
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct score_elf_link_hash_entry {scalar_t__ possibly_dynamic_relocs; int no_fn_stub; scalar_t__ readonly_reloc; } ;
struct TYPE_23__ {TYPE_8__* weakdef; } ;
struct TYPE_16__ {int value; TYPE_10__* section; } ;
struct TYPE_17__ {TYPE_2__ def; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_15__ {int offset; } ;
struct elf_link_hash_entry {scalar_t__ type; TYPE_9__ u; TYPE_4__ root; scalar_t__ needs_plt; TYPE_1__ plt; int def_regular; scalar_t__ ref_regular; scalar_t__ def_dynamic; } ;
struct bfd_link_info {int flags; int relocatable; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_13__ {int size; } ;
typedef TYPE_10__ asection ;
struct TYPE_19__ {int value; TYPE_10__* section; } ;
struct TYPE_20__ {TYPE_5__ def; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_6__ u; } ;
struct TYPE_22__ {TYPE_7__ root; } ;
struct TYPE_14__ {int dynamic_sections_created; int * dynobj; } ;


 int BFD_ASSERT (int) ;
 int DF_TEXTREL ;
 int SCORE_ELF_STUB_SECTION_NAME ;
 scalar_t__ SCORE_FUNCTION_STUB_SIZE ;
 scalar_t__ STT_FUNC ;
 int TRUE ;
 TYPE_10__* bfd_get_section_by_name (int *,int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 TYPE_11__* elf_hash_table (struct bfd_link_info*) ;
 int score_elf_allocate_dynamic_relocations (int *,scalar_t__) ;

__attribute__((used)) static bfd_boolean
_bfd_score_elf_adjust_dynamic_symbol (struct bfd_link_info *info,
          struct elf_link_hash_entry *h)
{
  bfd *dynobj;
  struct score_elf_link_hash_entry *hscore;
  asection *s;

  dynobj = elf_hash_table (info)->dynobj;


  BFD_ASSERT (dynobj != ((void*)0)
              && (h->needs_plt
                  || h->u.weakdef != ((void*)0)
                  || (h->def_dynamic && h->ref_regular && !h->def_regular)));




  hscore = (struct score_elf_link_hash_entry *)h;
  if (!info->relocatable
      && hscore->possibly_dynamic_relocs != 0
      && (h->root.type == bfd_link_hash_defweak || !h->def_regular))
    {
      score_elf_allocate_dynamic_relocations (dynobj, hscore->possibly_dynamic_relocs);
      if (hscore->readonly_reloc)


        info->flags |= DF_TEXTREL;
    }


  if (!hscore->no_fn_stub && h->needs_plt)
    {
      if (!elf_hash_table (info)->dynamic_sections_created)
        return TRUE;





      if (!h->def_regular)
        {

          s = bfd_get_section_by_name (dynobj, SCORE_ELF_STUB_SECTION_NAME);
          BFD_ASSERT (s != ((void*)0));

          h->root.u.def.section = s;
          h->root.u.def.value = s->size;


          h->plt.offset = s->size;


          s->size += SCORE_FUNCTION_STUB_SIZE;



          return TRUE;
        }
    }
  else if ((h->type == STT_FUNC) && !h->needs_plt)
    {


      h->root.u.def.value = 0;
      return TRUE;
    }




  if (h->u.weakdef != ((void*)0))
    {
      BFD_ASSERT (h->u.weakdef->root.type == bfd_link_hash_defined
                  || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      return TRUE;
    }



  return TRUE;
}
