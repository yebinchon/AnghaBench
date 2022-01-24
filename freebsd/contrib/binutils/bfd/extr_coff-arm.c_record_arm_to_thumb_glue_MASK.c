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
struct coff_link_hash_entry {TYPE_2__ root; } ;
struct coff_arm_link_hash_table {scalar_t__ arm_glue_size; int /*<<< orphan*/ * bfd_of_glue_owner; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 char* ARM2THUMB_GLUE_ENTRY_NAME ; 
 int /*<<< orphan*/  ARM2THUMB_GLUE_SECTION_NAME ; 
 scalar_t__ ARM2THUMB_GLUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BSF_GLOBAL ; 
 int /*<<< orphan*/  FALSE ; 
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
  const char *                      name = h->root.root.string;
  register asection *               s;
  char *                            tmp_name;
  struct coff_link_hash_entry *     myh;
  struct bfd_link_hash_entry *      bh;
  struct coff_arm_link_hash_table * globals;
  bfd_vma val;
  bfd_size_type amt;

  globals = FUNC4 (info);

  FUNC0 (globals != NULL);
  FUNC0 (globals->bfd_of_glue_owner != NULL);

  s = FUNC2
    (globals->bfd_of_glue_owner, ARM2THUMB_GLUE_SECTION_NAME);

  FUNC0 (s != NULL);

  amt = FUNC9 (name) + FUNC9 (ARM2THUMB_GLUE_ENTRY_NAME) + 1;
  tmp_name = FUNC3 (amt);

  FUNC0 (tmp_name);

  FUNC8 (tmp_name, ARM2THUMB_GLUE_ENTRY_NAME, name);

  myh = FUNC6
    (FUNC5 (info), tmp_name, FALSE, FALSE, TRUE);

  if (myh != NULL)
    {
      FUNC7 (tmp_name);
      /* We've already seen this guy.  */
      return;
    }

  /* The only trick here is using globals->arm_glue_size as the value. Even
     though the section isn't allocated yet, this is where we will be putting
     it.  */
  bh = NULL;
  val = globals->arm_glue_size + 1;
  FUNC1 (info, globals->bfd_of_glue_owner, tmp_name,
				BSF_GLOBAL, s, val, NULL, TRUE, FALSE, &bh);

  FUNC7 (tmp_name);

  globals->arm_glue_size += ARM2THUMB_GLUE_SIZE;

  return;
}