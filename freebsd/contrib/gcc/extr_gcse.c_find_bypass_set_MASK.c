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
struct expr {int /*<<< orphan*/  expr; int /*<<< orphan*/  bitmap_index; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cprop_avout ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct expr* FUNC7 (int,int /*<<< orphan*/ *) ; 
 struct expr* FUNC8 (int,struct expr*) ; 
 int /*<<< orphan*/  set_hash_table ; 

__attribute__((used)) static struct expr *
FUNC9 (int regno, int bb)
{
  struct expr *result = 0;

  for (;;)
    {
      rtx src;
      struct expr *set = FUNC7 (regno, &set_hash_table);

      while (set)
	{
	  if (FUNC4 (cprop_avout[bb], set->bitmap_index))
	    break;
	  set = FUNC8 (regno, set);
	}

      if (set == 0)
	break;

      FUNC5 (FUNC0 (set->expr) == SET);

      src = FUNC3 (set->expr);
      if (FUNC6 (src))
	result = set;

      if (! FUNC2 (src))
	break;

      regno = FUNC1 (src);
    }
  return result;
}