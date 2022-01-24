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
struct live_images {int examined_p; int /*<<< orphan*/ * destructor; int /*<<< orphan*/ * fde; int /*<<< orphan*/ * object_info; } ;
struct km_object_info {int /*<<< orphan*/  unseen_objects; int /*<<< orphan*/  seen_objects; } ;

/* Variables and functions */
 int ALLOCED_IMAGE_MASK ; 
 int /*<<< orphan*/  KEYMGR_GCC3_DW2_OBJ_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct km_object_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct km_object_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  seen_objects ; 
 int /*<<< orphan*/  unseen_objects ; 

__attribute__((used)) static void
FUNC4 (struct live_images *image)
{
  if (image->object_info)
    {
      struct km_object_info *the_obj_info;

      the_obj_info =
	FUNC1 (KEYMGR_GCC3_DW2_OBJ_LIST);
      if (the_obj_info)
	{
	  seen_objects = the_obj_info->seen_objects;
	  unseen_objects = the_obj_info->unseen_objects;

	  /* Free any sorted arrays.  */
	  FUNC0 (image->fde);

	  the_obj_info->seen_objects = seen_objects;
	  the_obj_info->unseen_objects = unseen_objects;
	}
      FUNC2 (KEYMGR_GCC3_DW2_OBJ_LIST,
					      the_obj_info);

      FUNC3 (image->object_info);
      image->object_info = NULL;
      if (image->examined_p & ALLOCED_IMAGE_MASK)
	FUNC3 (image->fde);
      image->fde = NULL;
    }
  image->examined_p = 0;
  image->destructor = NULL;
}