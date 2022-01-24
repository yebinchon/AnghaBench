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

/* Variables and functions */
 int /*<<< orphan*/  LOOKUP_COMPLAIN ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TV_NAME_LOOKUP ; 
 scalar_t__ global_type_node ; 
 scalar_t__ FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

tree
FUNC5 (tree id)
{
  FUNC4 (TV_NAME_LOOKUP);
  /* There is no type with that name, anywhere.  */
  if (FUNC1 (id) == NULL_TREE)
    FUNC0 (TV_NAME_LOOKUP, NULL_TREE);
  /* This is not the type marker, but the real thing.  */
  if (FUNC1 (id) != global_type_node)
    FUNC0 (TV_NAME_LOOKUP, FUNC1 (id));
  /* Have to search for it. It must be on the global level, now.
     Ask lookup_name not to return non-types.  */
  id = FUNC3 (id, 2, 1, /*block_p=*/true, 0, LOOKUP_COMPLAIN);
  if (id)
    FUNC0 (TV_NAME_LOOKUP, FUNC2 (id));
  FUNC0 (TV_NAME_LOOKUP, NULL_TREE);
}