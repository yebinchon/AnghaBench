#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct km_object_info {int /*<<< orphan*/  unseen_objects; int /*<<< orphan*/  seen_objects; } ;
struct dwarf_eh_bases {int dummy; } ;
typedef  int /*<<< orphan*/  fde ;

/* Variables and functions */
 int /*<<< orphan*/  KEYMGR_GCC3_DW2_OBJ_LIST ; 
 int /*<<< orphan*/ * FUNC0 (void*,struct dwarf_eh_bases*) ; 
 struct km_object_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct km_object_info*) ; 
 struct km_object_info* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (void*,struct dwarf_eh_bases*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seen_objects ; 
 int /*<<< orphan*/  unseen_objects ; 

const fde *
FUNC5 (void *pc, struct dwarf_eh_bases *bases)
{
  struct km_object_info *the_obj_info;
  const fde *ret = NULL;

  the_obj_info =
    FUNC1 (KEYMGR_GCC3_DW2_OBJ_LIST);
  if (! the_obj_info)
    the_obj_info = FUNC3 (1, sizeof (*the_obj_info));

  if (the_obj_info != NULL)
    {
      seen_objects = the_obj_info->seen_objects;
      unseen_objects = the_obj_info->unseen_objects;

      ret = FUNC0 (pc, bases);
    }

  /* OK, didn't find it in the list of FDEs we've seen before,
     so go through and look at the new ones.  */
  if (ret == NULL)
    ret = FUNC4 (pc, bases, the_obj_info == NULL);

  if (the_obj_info != NULL)
    {
      the_obj_info->seen_objects = seen_objects;
      the_obj_info->unseen_objects = unseen_objects;
    }
  FUNC2 (KEYMGR_GCC3_DW2_OBJ_LIST,
					  the_obj_info);
  return ret;
}