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
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_error ; 
 int /*<<< orphan*/  tf_none ; 
 int /*<<< orphan*/  typename_type ; 

__attribute__((used)) static tree
FUNC3 (cp_parser *parser, tree scope, tree id)
{
  tree result;
  if (FUNC0 (id) == IDENTIFIER_NODE)
    {
      result = FUNC2 (scope, id, typename_type,
				   /*complain=*/tf_none);
      if (result == error_mark_node)
	FUNC1 (parser, scope, id);
      return result;
    }
  return FUNC2 (scope, id, typename_type, tf_error);
}