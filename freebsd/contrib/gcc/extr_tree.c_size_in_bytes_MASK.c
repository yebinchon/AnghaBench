#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* incomplete_type_error ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ integer_zero_node ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ size_zero_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

tree
FUNC5 (tree type)
{
  tree t;

  if (type == error_mark_node)
    return integer_zero_node;

  type = FUNC1 (type);
  t = FUNC2 (type);

  if (t == 0)
    {
      lang_hooks.types.incomplete_type_error (NULL_TREE, type);
      return size_zero_node;
    }

  if (FUNC0 (t) == INTEGER_CST)
    t = FUNC3 (t, 0, false, false);

  return t;
}