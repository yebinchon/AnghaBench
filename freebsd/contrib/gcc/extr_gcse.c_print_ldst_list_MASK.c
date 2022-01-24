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
struct ls_expr {int index; scalar_t__ stores; scalar_t__ loads; scalar_t__ pattern; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct ls_expr* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct ls_expr* FUNC2 (struct ls_expr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4 (FILE * file)
{
  struct ls_expr * ptr;

  FUNC1 (file, "LDST list: \n");

  for (ptr = FUNC0(); ptr != NULL; ptr = FUNC2 (ptr))
    {
      FUNC1 (file, "  Pattern (%3d): ", ptr->index);

      FUNC3 (file, ptr->pattern);

      FUNC1 (file, "\n	 Loads : ");

      if (ptr->loads)
	FUNC3 (file, ptr->loads);
      else
	FUNC1 (file, "(nil)");

      FUNC1 (file, "\n	Stores : ");

      if (ptr->stores)
	FUNC3 (file, ptr->stores);
      else
	FUNC1 (file, "(nil)");

      FUNC1 (file, "\n\n");
    }

  FUNC1 (file, "\n");
}