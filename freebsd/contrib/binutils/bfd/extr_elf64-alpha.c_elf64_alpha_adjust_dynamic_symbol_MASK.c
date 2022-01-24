#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_7__* weakdef; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  section; } ;
struct TYPE_11__ {TYPE_1__ def; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_8__ u; TYPE_3__ root; void* needs_plt; } ;
struct bfd_link_info {int dummy; } ;
struct alpha_elf_link_hash_entry {int dummy; } ;
typedef  void* bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_18__ {int /*<<< orphan*/ * dynobj; } ;
struct TYPE_13__ {int /*<<< orphan*/  value; int /*<<< orphan*/  section; } ;
struct TYPE_14__ {TYPE_4__ def; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_5__ u; } ;
struct TYPE_16__ {TYPE_6__ root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FALSE ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (struct elf_link_hash_entry*,struct bfd_link_info*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_defweak ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 scalar_t__ FUNC4 (struct alpha_elf_link_hash_entry*) ; 
 TYPE_9__* FUNC5 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct bfd_link_info *info,
				   struct elf_link_hash_entry *h)
{
  bfd *dynobj;
  asection *s;
  struct alpha_elf_link_hash_entry *ah;

  dynobj = FUNC5(info)->dynobj;
  ah = (struct alpha_elf_link_hash_entry *)h;

  /* Now that we've seen all of the input symbols, finalize our decision
     about whether this symbol should get a .plt entry.  Irritatingly, it
     is common for folk to leave undefined symbols in shared libraries,
     and they still expect lazy binding; accept undefined symbols in lieu
     of STT_FUNC.  */
  if (FUNC1 (h, info) && FUNC4 (ah))
    {
      h->needs_plt = TRUE;

      s = FUNC2(dynobj, ".plt");
      if (!s && !FUNC3 (dynobj, info))
	return FALSE;

      /* We need one plt entry per got subsection.  Delay allocation of
	 the actual plt entries until size_plt_section, called from
	 size_dynamic_sections or during relaxation.  */

      return TRUE;
    }
  else
    h->needs_plt = FALSE;

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
     is not a function.  The Alpha, since it uses .got entries for all
     symbols even in regular objects, does not need the hackery of a
     .dynbss section and COPY dynamic relocations.  */

  return TRUE;
}