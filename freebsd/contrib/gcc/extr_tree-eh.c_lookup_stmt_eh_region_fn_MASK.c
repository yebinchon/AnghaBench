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
struct throw_stmt_node {int region_nr; int /*<<< orphan*/  stmt; } ;
struct function {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct function*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct throw_stmt_node*) ; 

int
FUNC2 (struct function *ifun, tree t)
{
  struct throw_stmt_node *p, n;

  if (!FUNC0 (ifun))
    return -2;

  n.stmt = t;
  p = (struct throw_stmt_node *) FUNC1 (FUNC0 (ifun),
                                            &n);

  return (p ? p->region_nr : -1);
}