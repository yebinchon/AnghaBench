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
struct df_link {int /*<<< orphan*/  ref; struct df_link* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC6 (struct df_link *link, FILE *file)
{
  FUNC5 (file, "{ ");
  for (; link; link = link->next)
    {
      FUNC5 (file, "%c%d(bb %d insn %d) ",
	       FUNC4 (link->ref) ? 'd' : 'u',
	       FUNC1 (link->ref),
	       FUNC0 (link->ref),
	       FUNC2 (link->ref) ? FUNC3 (link->ref) : -1);
    }
  FUNC5 (file, "}");
}