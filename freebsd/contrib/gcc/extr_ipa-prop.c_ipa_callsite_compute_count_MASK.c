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
typedef  scalar_t__ tree ;
struct cgraph_edge {int dummy; } ;

/* Variables and functions */
 scalar_t__ CALL_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_edge*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cgraph_edge*) ; 

void
FUNC7 (struct cgraph_edge *cs)
{
  tree call_tree;
  tree arg;
  int arg_num;

  call_tree = FUNC4 (FUNC6 (cs));
  FUNC3 (FUNC1 (call_tree) == CALL_EXPR);
  arg = FUNC2 (call_tree, 1);
  arg_num = 0;
  for (; arg != NULL_TREE; arg = FUNC0 (arg))
    arg_num++;
  FUNC5 (cs, arg_num);
}