#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef  int flagword ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_5__ {int gc_mark; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  ARM2THUMB_GLUE_SECTION_NAME ; 
 int /*<<< orphan*/  FALSE ; 
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IN_MEMORY ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  THUMB2ARM_GLUE_SECTION_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VFP11_ERRATUM_VENEER_SECTION_NAME ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

bfd_boolean
FUNC3 (bfd *abfd,
					struct bfd_link_info *info)
{
  flagword flags;
  asection *sec;

  /* If we are only performing a partial
     link do not bother adding the glue.  */
  if (info->relocatable)
    return TRUE;

  sec = FUNC0 (abfd, ARM2THUMB_GLUE_SECTION_NAME);

  if (sec == NULL)
    {
      /* Note: we do not include the flag SEC_LINKER_CREATED, as this
	 will prevent elf_link_input_bfd() from processing the contents
	 of this section.  */
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	       | SEC_CODE | SEC_READONLY);

      sec = FUNC1 (abfd,
					 ARM2THUMB_GLUE_SECTION_NAME,
					 flags);

      if (sec == NULL
	  || !FUNC2 (abfd, sec, 2))
	return FALSE;

      /* Set the gc mark to prevent the section from being removed by garbage
	 collection, despite the fact that no relocs refer to this section.  */
      sec->gc_mark = 1;
    }

  sec = FUNC0 (abfd, THUMB2ARM_GLUE_SECTION_NAME);

  if (sec == NULL)
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	       | SEC_CODE | SEC_READONLY);

      sec = FUNC1 (abfd,
					 THUMB2ARM_GLUE_SECTION_NAME,
					 flags);

      if (sec == NULL
	  || !FUNC2 (abfd, sec, 2))
	return FALSE;

      sec->gc_mark = 1;
    }

  sec = FUNC0 (abfd, VFP11_ERRATUM_VENEER_SECTION_NAME);

  if (sec == NULL)
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
	       | SEC_CODE | SEC_READONLY);

      sec = FUNC1 (abfd,
					 VFP11_ERRATUM_VENEER_SECTION_NAME,
                                         flags);

      if (sec == NULL
	  || !FUNC2 (abfd, sec, 2))
	return FALSE;

      sec->gc_mark = 1;
    }

  return TRUE;
}