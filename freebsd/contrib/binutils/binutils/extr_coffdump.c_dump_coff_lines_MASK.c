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
struct coff_line {int nlines; int* lines; int* addresses; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_line *p)
{
  int i;
  int online = 0;

  FUNC3 (1);
  FUNC2 (FUNC0("#lines %d "),p->nlines);

  for (i = 0; i < p->nlines; i++)
    {
      FUNC2 ("(%d 0x%x)", p->lines[i], p->addresses[i]);

      online++;

      if (online > 6)
	{
	  FUNC1 ();
	  FUNC3 (0);
	  online = 0;
	}
    }
  FUNC1 ();
  FUNC3 (-1);
}