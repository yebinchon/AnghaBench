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
struct obj_section {struct bfd_section* the_bfd_section; } ;
struct bfd_section {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct bfd_section* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct bfd_section*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct obj_section* FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3 (CORE_ADDR pc, char **name, CORE_ADDR *address,
			  CORE_ADDR *endaddr)
{
  struct bfd_section *bfd_section;

  /* To ensure that the symbol returned belongs to the correct setion
     (and that the last [random] symbol from the previous section
     isn't returned) try to find the section containing PC.  First try
     the overlay code (which by default returns NULL); and second try
     the normal section code (which almost always succeeds).  */
  bfd_section = FUNC0 (pc);
  if (bfd_section == NULL)
    {
      struct obj_section *obj_section = FUNC2 (pc);
      if (obj_section == NULL)
	bfd_section = NULL;
      else
	bfd_section = obj_section->the_bfd_section;
    }
  return FUNC1 (pc, bfd_section, name, address,
					endaddr);
}