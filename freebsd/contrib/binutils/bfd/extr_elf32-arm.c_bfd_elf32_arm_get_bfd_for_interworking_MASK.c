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
struct elf32_arm_link_hash_table {TYPE_1__* bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DYNAMIC ; 
 int /*<<< orphan*/  TRUE ; 
 struct elf32_arm_link_hash_table* FUNC1 (struct bfd_link_info*) ; 

bfd_boolean
FUNC2 (bfd *abfd, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *globals;

  /* If we are only performing a partial link
     do not bother getting a bfd to hold the glue.  */
  if (info->relocatable)
    return TRUE;

  /* Make sure we don't attach the glue sections to a dynamic object.  */
  FUNC0 (!(abfd->flags & DYNAMIC));

  globals = FUNC1 (info);

  FUNC0 (globals != NULL);

  if (globals->bfd_of_glue_owner != NULL)
    return TRUE;

  /* Save the bfd for later use.  */
  globals->bfd_of_glue_owner = abfd;

  return TRUE;
}