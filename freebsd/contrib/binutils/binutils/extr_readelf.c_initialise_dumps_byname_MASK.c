#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dump_list_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  type; struct dump_list_entry* next; } ;
struct TYPE_2__ {unsigned int e_shnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dump_list_entry* dump_sects_byname ; 
 TYPE_1__ elf_header ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ section_headers ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  struct dump_list_entry *cur;

  for (cur = dump_sects_byname; cur; cur = cur->next)
    {
      unsigned int i;
      int any;

      for (i = 0, any = 0; i < elf_header.e_shnum; i++)
	if (FUNC3 (FUNC0 (section_headers + i), cur->name))
	  {
	    FUNC2 (i, cur->type);
	    any = 1;
	  }

      if (!any)
	FUNC4 (FUNC1("Section '%s' was not dumped because it does not exist!\n"),
	      cur->name);
    }
}