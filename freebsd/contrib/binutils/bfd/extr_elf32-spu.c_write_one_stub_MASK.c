#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {char* string; } ;
struct spu_stub_hash_entry {int target_off; int off; int delta; TYPE_7__ root; TYPE_11__* target_section; } ;
struct spu_link_hash_table {int /*<<< orphan*/  elf; scalar_t__ emit_stub_syms; int /*<<< orphan*/  stub_overflow; TYPE_6__* ovly_load; TYPE_11__* stub; } ;
struct TYPE_25__ {int value; TYPE_11__* section; } ;
struct TYPE_26__ {TYPE_8__ def; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_9__ u; } ;
struct elf_link_hash_entry {int ref_regular; int def_regular; int ref_regular_nonweak; int forced_local; scalar_t__ non_elf; int /*<<< orphan*/  type; scalar_t__ size; TYPE_10__ root; } ;
struct bfd_hash_entry {int dummy; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_15__ {int output_offset; int contents; int /*<<< orphan*/  owner; TYPE_13__* output_section; } ;
typedef  TYPE_11__ asection ;
struct TYPE_20__ {int value; TYPE_2__* section; } ;
struct TYPE_21__ {TYPE_3__ def; } ;
struct TYPE_22__ {TYPE_4__ u; } ;
struct TYPE_23__ {TYPE_5__ root; } ;
struct TYPE_19__ {int output_offset; TYPE_1__* output_section; } ;
struct TYPE_18__ {int vma; } ;
struct TYPE_17__ {int vma; } ;
struct TYPE_16__ {unsigned int ovl_index; } ;

/* Variables and functions */
 scalar_t__ BR ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ILA_78 ; 
 scalar_t__ ILA_79 ; 
 scalar_t__ NOP ; 
 scalar_t__ SIZEOF_STUB1 ; 
 scalar_t__ SIZEOF_STUB2 ; 
 int /*<<< orphan*/  STT_FUNC ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_link_hash_defined ; 
 scalar_t__ bfd_link_hash_new ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct elf_link_hash_entry* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 TYPE_12__* FUNC5 (TYPE_13__*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (struct bfd_hash_entry *bh, void *inf)
{
  struct spu_stub_hash_entry *ent = (struct spu_stub_hash_entry *) bh;
  struct spu_link_hash_table *htab = inf;
  asection *sec = htab->stub;
  asection *s = ent->target_section;
  unsigned int ovl;
  bfd_vma val;

  val = ent->target_off + s->output_offset + s->output_section->vma;
  FUNC1 (sec->owner, ILA_79 + ((val << 7) & 0x01ffff80),
	      sec->contents + ent->off);
  val = ent->delta + 4;
  FUNC1 (sec->owner, BR + ((val << 5) & 0x007fff80),
	      sec->contents + ent->off + 4);

  /* If this is the last stub of this group, write stub2.  */
  if (ent->delta == 0)
    {
      FUNC1 (sec->owner, NOP,
		  sec->contents + ent->off + 4);

      ovl = FUNC5 (s->output_section)->ovl_index;
      FUNC1 (sec->owner, ILA_78 + ((ovl << 7) & 0x01ffff80),
		  sec->contents + ent->off + 8);

      val = (htab->ovly_load->root.u.def.section->output_section->vma
	     + htab->ovly_load->root.u.def.section->output_offset
	     + htab->ovly_load->root.u.def.value
	     - (sec->output_section->vma
		+ sec->output_offset
		+ ent->off + 12));

      if (val + 0x20000 >= 0x40000)
	htab->stub_overflow = TRUE;

      FUNC1 (sec->owner, BR + ((val << 5) & 0x007fff80),
		  sec->contents + ent->off + 12);
    }

  if (htab->emit_stub_syms)
    {
      struct elf_link_hash_entry *h;
      size_t len1, len2;
      char *name;

      len1 = sizeof ("00000000.ovl_call.") - 1;
      len2 = FUNC6 (ent->root.string);
      name = FUNC0 (len1 + len2 + 1);
      if (name == NULL)
	return FALSE;
      FUNC4 (name, "00000000.ovl_call.", len1);
      FUNC4 (name + len1, ent->root.string, len2 + 1);
      h = FUNC2 (&htab->elf, name, TRUE, TRUE, FALSE);
      FUNC3 (name);
      if (h == NULL)
	return FALSE;
      if (h->root.type == bfd_link_hash_new)
	{
	  h->root.type = bfd_link_hash_defined;
	  h->root.u.def.section = sec;
	  h->root.u.def.value = ent->off;
	  h->size = (ent->delta == 0
		     ? SIZEOF_STUB1 + SIZEOF_STUB2 : SIZEOF_STUB1);
	  h->type = STT_FUNC;
	  h->ref_regular = 1;
	  h->def_regular = 1;
	  h->ref_regular_nonweak = 1;
	  h->forced_local = 1;
	  h->non_elf = 0;
	}
    }

  return TRUE;
}