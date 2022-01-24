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
struct coff_scope {int offset; int size; int nvars; struct coff_scope* next; struct coff_scope* list_head; int /*<<< orphan*/  vars_head; TYPE_1__* sec; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_scope *p)
{
  if (p)
    {
      FUNC3 (1);
      FUNC2 ("List of blocks %lx ",(unsigned long) p);

      if (p->sec)
	FUNC2( "  %s %x..%x",  p->sec->name,p->offset, p->offset + p->size -1);

      FUNC1 ();
      FUNC3 (0);
      FUNC2 ("*****************");
      FUNC1 ();

      while (p)
	{
	  FUNC3 (0);
	  FUNC2 ("vars %d", p->nvars);
	  FUNC1 ();
	  FUNC0 (p->vars_head);
	  FUNC2 ("blocks");
	  FUNC1 ();
	  FUNC4 (p->list_head);
	  FUNC1 ();
	  p = p->next;
	}

      FUNC3 (0);
      FUNC2 ("*****************");
      FUNC1 ();
      FUNC3 (-1);
    }
}