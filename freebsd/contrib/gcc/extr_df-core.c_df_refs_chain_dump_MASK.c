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
struct df_ref {struct df_ref* next_ref; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct df_ref*) ; 
 int FUNC1 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct df_ref*) ; 
 scalar_t__ FUNC3 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC6 (struct df_ref *ref, bool follow_chain, FILE *file)
{
  FUNC5 (file, "{ ");
  while (ref)
    {
      FUNC5 (file, "%c%d(%d) ",
	       FUNC3 (ref) ? 'd' : 'u',
	       FUNC1 (ref),
	       FUNC2 (ref));
      if (follow_chain)
	FUNC4 (FUNC0 (ref), file);
      ref = ref->next_ref;
    }
  FUNC5 (file, "}");
}