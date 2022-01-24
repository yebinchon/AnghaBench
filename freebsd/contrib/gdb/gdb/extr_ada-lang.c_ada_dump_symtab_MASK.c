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
struct symtab {char* dirname; char* filename; char* debugformat; int block_line_section; TYPE_1__* linetable; } ;
struct linetable_entry {scalar_t__ pc; scalar_t__ line; } ;
struct TYPE_2__ {int nitems; struct linetable_entry* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC1 (struct symtab *s)
{
  int i;
  FUNC0 (stderr, "New symtab: [\n");
  FUNC0 (stderr, "  Name: %s/%s;\n",
	   s->dirname ? s->dirname : "?", s->filename ? s->filename : "?");
  FUNC0 (stderr, "  Format: %s;\n", s->debugformat);
  if (s->linetable != NULL)
    {
      FUNC0 (stderr, "  Line table (section %d):\n", s->block_line_section);
      for (i = 0; i < s->linetable->nitems; i += 1)
	{
	  struct linetable_entry *e = s->linetable->item + i;
	  FUNC0 (stderr, "    %4ld: %8lx\n", (long) e->line, (long) e->pc);
	}
    }
  FUNC0 (stderr, "]\n");
}