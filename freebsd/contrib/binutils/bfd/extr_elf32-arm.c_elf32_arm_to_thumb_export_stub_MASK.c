#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_7__* section; } ;
struct TYPE_25__ {TYPE_8__ def; } ;
struct TYPE_22__ {int /*<<< orphan*/  string; } ;
struct TYPE_15__ {TYPE_9__ u; TYPE_6__ root; } ;
struct elf_link_hash_entry {TYPE_10__ root; } ;
struct elf32_arm_link_hash_table {int /*<<< orphan*/  obfd; int /*<<< orphan*/ * bfd_of_glue_owner; } ;
struct elf32_arm_link_hash_entry {TYPE_4__* export_glue; } ;
struct bfd_link_info {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_16__ {TYPE_5__* output_section; scalar_t__ output_offset; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_11__ asection ;
struct TYPE_23__ {int /*<<< orphan*/  owner; } ;
struct TYPE_21__ {scalar_t__ vma; } ;
struct TYPE_17__ {scalar_t__ value; TYPE_11__* section; } ;
struct TYPE_18__ {TYPE_1__ def; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
struct TYPE_20__ {TYPE_3__ root; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM2THUMB_GLUE_SECTION_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct elf_link_hash_entry*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_11__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct elf_link_hash_entry* FUNC2 (struct bfd_link_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_11__*,scalar_t__,TYPE_11__*,char**) ; 
 struct elf32_arm_link_hash_entry* FUNC3 (struct elf_link_hash_entry*) ; 
 struct elf32_arm_link_hash_table* FUNC4 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_boolean
FUNC5 (struct elf_link_hash_entry *h, void * inf)
{
  struct bfd_link_info * info = (struct bfd_link_info *) inf;
  asection * s;
  struct elf_link_hash_entry * myh;
  struct elf32_arm_link_hash_entry *eh;
  struct elf32_arm_link_hash_table * globals;
  asection *sec;
  bfd_vma val;
  char *error_message;

  eh = FUNC3(h);
  /* Allocate stubs for exported Thumb functions on v4t.  */
  if (eh->export_glue == NULL)
    return TRUE;

  globals = FUNC4 (info);

  FUNC0 (globals != NULL);
  FUNC0 (globals->bfd_of_glue_owner != NULL);

  s = FUNC1 (globals->bfd_of_glue_owner,
			       ARM2THUMB_GLUE_SECTION_NAME);
  FUNC0 (s != NULL);
  FUNC0 (s->contents != NULL);
  FUNC0 (s->output_section != NULL);

  sec = eh->export_glue->root.u.def.section;

  FUNC0 (sec->output_section != NULL);

  val = eh->export_glue->root.u.def.value + sec->output_offset
	+ sec->output_section->vma;
  myh = FUNC2 (info, h->root.root.string,
				     h->root.u.def.section->owner,
				     globals->obfd, sec, val, s,
				     &error_message);
  FUNC0 (myh);
  return TRUE;
}