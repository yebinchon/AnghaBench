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
struct decision {scalar_t__ subroutine_number; int number; int /*<<< orphan*/  position; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC2 (struct decision *start, struct decision *afterward,
		 const char *indent)
{
  if (!afterward || start->subroutine_number > 0)
    FUNC1("%sgoto ret0;\n", indent);
  else
    {
      FUNC0 (start->position, afterward->position, indent);
      FUNC1 ("%sgoto L%d;\n", indent, afterward->number);
    }
}