#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int flag_isoc99 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (c_parser *parser, tree foreach_elem_selector)
{
  tree res;
  int save_flag_isoc99 = flag_isoc99;
  FUNC5 (foreach_elem_selector);
  /* Consume 'in' keyword */
  FUNC1 (parser); 
  res = FUNC0 (foreach_elem_selector, FUNC2 (parser).value); 
  FUNC4 ();
  flag_isoc99 = 1;
  FUNC3 ();
  flag_isoc99 = save_flag_isoc99;
  return res;
}