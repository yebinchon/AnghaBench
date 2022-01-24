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
struct coff_symbol {char* name; int tag; int number; struct coff_symbol* next; int /*<<< orphan*/  visible; int /*<<< orphan*/  where; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (struct coff_symbol *p)
{
  FUNC5 (1);
  FUNC4 ("List of symbols");
  FUNC3 ();

  while (p)
    {
      FUNC5 (1);
      FUNC5 (1);
      FUNC4 ("Symbol  %s, tag %d, number %d", p->name, p->tag, p->number);
      FUNC3 ();
      FUNC5 (-1);
      FUNC5 (1);
      FUNC4 ("Type");
      FUNC3 ();
      FUNC0 (p->type);
      FUNC5 (-1);
      FUNC5 (1);
      FUNC4 ("Where");
      FUNC2 (p->where);
      FUNC5 (-1);
      FUNC5 (1);
      FUNC4 ("Visible");
      FUNC1 (p->visible);
      FUNC5 (-1);
      p = p->next;
      FUNC5 (-1);
    }
  FUNC5 (-1);
}