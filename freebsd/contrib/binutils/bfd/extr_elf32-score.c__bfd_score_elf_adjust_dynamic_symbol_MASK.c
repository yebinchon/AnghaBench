#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct score_elf_link_hash_entry {scalar_t__ possibly_dynamic_relocs; int /*<<< orphan*/  no_fn_stub; scalar_t__ readonly_reloc; } ;
struct TYPE_23__ {TYPE_8__* weakdef; } ;
struct TYPE_16__ {int /*<<< orphan*/  value; TYPE_10__* section; } ;
struct TYPE_17__ {TYPE_2__ def; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/  offset; } ;
struct elf_link_hash_entry {scalar_t__ type; TYPE_9__ u; TYPE_4__ root; scalar_t__ needs_plt; TYPE_1__ plt; int /*<<< orphan*/  def_regular; scalar_t__ ref_regular; scalar_t__ def_dynamic; } ;
struct bfd_link_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  relocatable; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_13__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_10__ asection ;
struct TYPE_19__ {int /*<<< orphan*/  value; TYPE_10__* section; } ;
struct TYPE_20__ {TYPE_5__ def; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_6__ u; } ;
struct TYPE_22__ {TYPE_7__ root; } ;
struct TYPE_14__ {int /*<<< orphan*/  dynamic_sections_created; int /*<<< orphan*/ * dynobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DF_TEXTREL ; 
 int /*<<< orphan*/  SCORE_ELF_STUB_SECTION_NAME ; 
 scalar_t__ SCORE_FUNCTION_STUB_SIZE ; 
 scalar_t__ STT_FUNC ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_10__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 TYPE_11__* FUNC2 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (struct bfd_link_info *info,
				      struct elf_link_hash_entry *h)
{
  bfd *dynobj;
  struct score_elf_link_hash_entry *hscore;
  asection *s;

  dynobj = FUNC2 (info)->dynobj;

  /* Make sure we know what is going on here.  */
  FUNC0 (dynobj != NULL
              && (h->needs_plt
                  || h->u.weakdef != NULL
                  || (h->def_dynamic && h->ref_regular && !h->def_regular)));

  /* If this symbol is defined in a dynamic object, we need to copy
     any R_SCORE_ABS32 or R_SCORE_REL32 relocs against it into the output
     file.  */
  hscore = (struct score_elf_link_hash_entry *)h;
  if (!info->relocatable
      && hscore->possibly_dynamic_relocs != 0
      && (h->root.type == bfd_link_hash_defweak || !h->def_regular))
    {
      FUNC3 (dynobj, hscore->possibly_dynamic_relocs);
      if (hscore->readonly_reloc)
        /* We tell the dynamic linker that there are relocations
           against the text segment.  */
        info->flags |= DF_TEXTREL;
    }

  /* For a function, create a stub, if allowed.  */
  if (!hscore->no_fn_stub && h->needs_plt)
    {
      if (!FUNC2 (info)->dynamic_sections_created)
        return TRUE;

      /* If this symbol is not defined in a regular file, then set
         the symbol to the stub location.  This is required to make
         function pointers compare as equal between the normal
         executable and the shared library.  */
      if (!h->def_regular)
        {
          /* We need .stub section.  */
          s = FUNC1 (dynobj, SCORE_ELF_STUB_SECTION_NAME);
          FUNC0 (s != NULL);

          h->root.u.def.section = s;
          h->root.u.def.value = s->size;

          /* XXX Write this stub address somewhere.  */
          h->plt.offset = s->size;

          /* Make room for this stub code.  */
          s->size += SCORE_FUNCTION_STUB_SIZE;

          /* The last half word of the stub will be filled with the index
             of this symbol in .dynsym section.  */
          return TRUE;
        }
    }
  else if ((h->type == STT_FUNC) && !h->needs_plt)
    {
      /* This will set the entry for this symbol in the GOT to 0, and
         the dynamic linker will take care of this.  */
      h->root.u.def.value = 0;
      return TRUE;
    }

  /* If this is a weak symbol, and there is a real definition, the
     processor independent code will have arranged for us to see the
     real definition first, and we can just use the same value.  */
  if (h->u.weakdef != NULL)
    {
      FUNC0 (h->u.weakdef->root.type == bfd_link_hash_defined
                  || h->u.weakdef->root.type == bfd_link_hash_defweak);
      h->root.u.def.section = h->u.weakdef->root.u.def.section;
      h->root.u.def.value = h->u.weakdef->root.u.def.value;
      return TRUE;
    }

  /* This is a reference to a symbol defined by a dynamic object which
     is not a function.  */
  return TRUE;
}