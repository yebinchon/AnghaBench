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
struct section_table {unsigned long addr; long endaddr; int /*<<< orphan*/  the_bfd_section; } ;
typedef  int /*<<< orphan*/  secprint ;
struct TYPE_3__ {struct section_table* to_sections_end; struct section_table* to_sections; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ exec_ops ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 unsigned long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  struct section_table *p;
  char *secname;
  unsigned seclen;
  unsigned long secaddr;
  char secprint[100];
  long offset;

  if (args == 0)
    FUNC1 ("Must specify section name and its virtual address");

  /* Parse out section name */
  for (secname = args; !FUNC3 (*args); args++);
  seclen = args - secname;

  /* Parse out new virtual address */
  secaddr = FUNC4 (args);

  for (p = exec_ops.to_sections; p < exec_ops.to_sections_end; p++)
    {
      if (!FUNC5 (secname, FUNC0 (exec_bfd, p->the_bfd_section), seclen)
	  && FUNC0 (exec_bfd, p->the_bfd_section)[seclen] == '\0')
	{
	  offset = secaddr - p->addr;
	  p->addr += offset;
	  p->endaddr += offset;
	  if (from_tty)
	    FUNC2 (&exec_ops);
	  return;
	}
    }
  if (seclen >= sizeof (secprint))
    seclen = sizeof (secprint) - 1;
  FUNC6 (secprint, secname, seclen);
  secprint[seclen] = '\0';
  FUNC1 ("Section %s not found", secprint);
}