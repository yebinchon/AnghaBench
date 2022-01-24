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
struct target_ops {struct section_table* to_sections_end; struct section_table* to_sections; } ;
struct section_table {int /*<<< orphan*/ * bfd; TYPE_1__* the_bfd_section; int /*<<< orphan*/  endaddr; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  filepos; } ;

/* Variables and functions */
 int TARGET_ADDR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * exec_bfd ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8 (struct target_ops *t, bfd *abfd)
{
  struct section_table *p;
  /* FIXME: "016l" is not wide enough when TARGET_ADDR_BIT > 64.  */
  char *fmt = TARGET_ADDR_BIT <= 32 ? "08l" : "016l";

  FUNC6 ("\t`%s', ", FUNC0 (abfd));
  FUNC7 ("        ");
  FUNC6 ("file type %s.\n", FUNC2 (abfd));
  if (abfd == exec_bfd)
    {
      FUNC6 ("\tEntry point: ");
      FUNC5 (FUNC1 (abfd), 1, gdb_stdout);
      FUNC6 ("\n");
    }
  for (p = t->to_sections; p < t->to_sections_end; p++)
    {
      FUNC6 ("\t%s", FUNC4 (p->addr, fmt));
      FUNC6 (" - %s", FUNC4 (p->endaddr, fmt));

      /* FIXME: A format of "08l" is not wide enough for file offsets
	 larger than 4GB.  OTOH, making it "016l" isn't desirable either
	 since most output will then be much wider than necessary.  It
	 may make sense to test the size of the file and choose the
	 format string accordingly.  */
      if (info_verbose)
	FUNC6 (" @ %s",
			 FUNC4 (p->the_bfd_section->filepos, "08l"));
      FUNC6 (" is %s", FUNC3 (p->bfd, p->the_bfd_section));
      if (p->bfd != abfd)
	{
	  FUNC6 (" in %s", FUNC0 (p->bfd));
	}
      FUNC6 ("\n");
    }
}