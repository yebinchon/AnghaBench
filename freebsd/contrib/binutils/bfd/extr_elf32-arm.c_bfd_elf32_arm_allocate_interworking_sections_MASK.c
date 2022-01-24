#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elf32_arm_link_hash_table {scalar_t__ arm_glue_size; scalar_t__ thumb_glue_size; scalar_t__ vfp11_erratum_glue_size; int /*<<< orphan*/ * bfd_of_glue_owner; } ;
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/ * contents; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  ARM2THUMB_GLUE_SECTION_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  THUMB2ARM_GLUE_SECTION_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VFP11_ERRATUM_VENEER_SECTION_NAME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct elf32_arm_link_hash_table* FUNC3 (struct bfd_link_info*) ; 

bfd_boolean
FUNC4 (struct bfd_link_info * info)
{
  asection * s;
  bfd_byte * foo;
  struct elf32_arm_link_hash_table * globals;

  globals = FUNC3 (info);

  FUNC0 (globals != NULL);

  if (globals->arm_glue_size != 0)
    {
      FUNC0 (globals->bfd_of_glue_owner != NULL);

      s = FUNC2 (globals->bfd_of_glue_owner,
				   ARM2THUMB_GLUE_SECTION_NAME);

      FUNC0 (s != NULL);

      foo = FUNC1 (globals->bfd_of_glue_owner, globals->arm_glue_size);

      FUNC0 (s->size == globals->arm_glue_size);
      s->contents = foo;
    }

  if (globals->thumb_glue_size != 0)
    {
      FUNC0 (globals->bfd_of_glue_owner != NULL);

      s = FUNC2
	(globals->bfd_of_glue_owner, THUMB2ARM_GLUE_SECTION_NAME);

      FUNC0 (s != NULL);

      foo = FUNC1 (globals->bfd_of_glue_owner, globals->thumb_glue_size);

      FUNC0 (s->size == globals->thumb_glue_size);
      s->contents = foo;
    }
  
  if (globals->vfp11_erratum_glue_size != 0)
    {
      FUNC0 (globals->bfd_of_glue_owner != NULL);
      
      s = FUNC2
        (globals->bfd_of_glue_owner, VFP11_ERRATUM_VENEER_SECTION_NAME);
      
      FUNC0 (s != NULL);
      
      foo = FUNC1 (globals->bfd_of_glue_owner,
		       globals->vfp11_erratum_glue_size);
      
      FUNC0 (s->size == globals->vfp11_erratum_glue_size);
      s->contents = foo;
    }

  return TRUE;
}