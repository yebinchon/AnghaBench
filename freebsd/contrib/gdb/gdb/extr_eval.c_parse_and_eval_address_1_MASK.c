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
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC3 (char**,struct block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC5 (char **expptr)
{
  struct expression *expr = FUNC3 (expptr, (struct block *) 0, 0);
  CORE_ADDR addr;
  struct cleanup *old_chain =
    FUNC2 (free_current_contents, &expr);

  addr = FUNC4 (FUNC1 (expr));
  FUNC0 (old_chain);
  return addr;
}