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
struct obstack {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*,int /*<<< orphan*/ ,struct obstack*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct obstack*) ; 
 int /*<<< orphan*/ * using_list ; 

void
FUNC2 (struct block *static_block,
		       struct obstack *obstack)
{
  if (using_list != NULL)
    {
      FUNC0 (static_block,
		       FUNC1 (using_list, obstack),
		       obstack);
      using_list = NULL;
    }
}