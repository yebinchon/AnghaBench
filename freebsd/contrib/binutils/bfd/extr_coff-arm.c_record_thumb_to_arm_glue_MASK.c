#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {TYPE_1__ root; } ;
struct coff_link_hash_entry {int /*<<< orphan*/  class; TYPE_2__ root; } ;
struct coff_arm_link_hash_table {scalar_t__ thumb_glue_size; int /*<<< orphan*/ * bfd_of_glue_owner; scalar_t__ support_old_code; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 char* BACK_FROM_ARM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  BSF_LOCAL ; 
 char* CHANGE_TO_ARM ; 
 int /*<<< orphan*/  C_THUMBEXTFUNC ; 
 int /*<<< orphan*/  FALSE ; 
 char* THUMB2ARM_GLUE_ENTRY_NAME ; 
 int /*<<< orphan*/  THUMB2ARM_GLUE_SECTION_NAME ; 
 scalar_t__ THUMB2ARM_GLUE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct bfd_link_info*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfd_link_hash_entry**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 struct coff_arm_link_hash_table* FUNC4 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfd_link_info*) ; 
 struct coff_link_hash_entry* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10 (struct bfd_link_info *        info,
			  struct coff_link_hash_entry * h)
{
  const char *                       name = h->root.root.string;
  asection *                         s;
  char *                             tmp_name;
  struct coff_link_hash_entry *      myh;
  struct bfd_link_hash_entry *       bh;
  struct coff_arm_link_hash_table *  globals;
  bfd_vma val;
  bfd_size_type amt;

  globals = FUNC4 (info);

  FUNC0 (globals != NULL);
  FUNC0 (globals->bfd_of_glue_owner != NULL);

  s = FUNC2
    (globals->bfd_of_glue_owner, THUMB2ARM_GLUE_SECTION_NAME);

  FUNC0 (s != NULL);

  amt = FUNC9 (name) + FUNC9 (THUMB2ARM_GLUE_ENTRY_NAME) + 1;
  tmp_name = FUNC3 (amt);

  FUNC0 (tmp_name);

  FUNC8 (tmp_name, THUMB2ARM_GLUE_ENTRY_NAME, name);

  myh = FUNC6
    (FUNC5 (info), tmp_name, FALSE, FALSE, TRUE);

  if (myh != NULL)
    {
      FUNC7 (tmp_name);
      /* We've already seen this guy.  */
      return;
    }

  bh = NULL;
  val = globals->thumb_glue_size + 1;
  FUNC1 (info, globals->bfd_of_glue_owner, tmp_name,
				BSF_GLOBAL, s, val, NULL, TRUE, FALSE, &bh);

  /* If we mark it 'thumb', the disassembler will do a better job.  */
  myh = (struct coff_link_hash_entry *) bh;
  myh->class = C_THUMBEXTFUNC;

  FUNC7 (tmp_name);

  /* Allocate another symbol to mark where we switch to arm mode.  */

#define CHANGE_TO_ARM "__%s_change_to_arm"
#define BACK_FROM_ARM "__%s_back_from_arm"

  amt = FUNC9 (name) + FUNC9 (CHANGE_TO_ARM) + 1;
  tmp_name = FUNC3 (amt);

  FUNC0 (tmp_name);

  FUNC8 (tmp_name, globals->support_old_code ? BACK_FROM_ARM : CHANGE_TO_ARM, name);

  bh = NULL;
  val = globals->thumb_glue_size + (globals->support_old_code ? 8 : 4);
  FUNC1 (info, globals->bfd_of_glue_owner, tmp_name,
				BSF_LOCAL, s, val, NULL, TRUE, FALSE, &bh);

  FUNC7 (tmp_name);

  globals->thumb_glue_size += THUMB2ARM_GLUE_SIZE;

  return;
}