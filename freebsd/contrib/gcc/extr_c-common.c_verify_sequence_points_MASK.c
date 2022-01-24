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
typedef  int /*<<< orphan*/  tree ;
struct tlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ save_expr_cache ; 
 char* tlist_firstobj ; 
 int /*<<< orphan*/  tlist_obstack ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tlist**,struct tlist**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tlist*) ; 
 scalar_t__ warned_ids ; 

void
FUNC5 (tree expr)
{
  struct tlist *before_sp = 0, *after_sp = 0;

  warned_ids = 0;
  save_expr_cache = 0;
  if (tlist_firstobj == 0)
    {
      FUNC0 (&tlist_obstack);
      tlist_firstobj = (char *) FUNC1 (&tlist_obstack, 0);
    }

  FUNC3 (expr, &before_sp, &after_sp, 0);
  FUNC4 (after_sp);
  FUNC2 (&tlist_obstack, tlist_firstobj);
}