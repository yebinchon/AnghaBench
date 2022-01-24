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
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ void_zero_node ; 

__attribute__((used)) static tree
FUNC1 (cp_parser* parser)
{
  tree expression_list;

  expression_list = (FUNC0
		     (parser, false, /*cast_p=*/false,
		      /*non_constant_p=*/NULL));
  if (!expression_list)
    expression_list = void_zero_node;

  return expression_list;
}