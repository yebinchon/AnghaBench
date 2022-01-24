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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int,int) ; 
 int* dump_sects ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int*,unsigned int) ; 
 unsigned int num_dump_sects ; 

__attribute__((used)) static void
FUNC5 (unsigned int section, int type)
{
  if (section >= num_dump_sects)
    {
      char *new_dump_sects;

      new_dump_sects = FUNC1 (section + 1, 1);

      if (new_dump_sects == NULL)
	FUNC2 (FUNC0("Out of memory allocating dump request table.\n"));
      else
	{
	  /* Copy current flag settings.  */
	  FUNC4 (new_dump_sects, dump_sects, num_dump_sects);

	  FUNC3 (dump_sects);

	  dump_sects = new_dump_sects;
	  num_dump_sects = section + 1;
	}
    }

  if (dump_sects)
    dump_sects[section] |= type;

  return;
}