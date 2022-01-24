#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ cur; scalar_t__ end; } ;
typedef  TYPE_1__ reshape_iter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  constructor_elt ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  gc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,TYPE_1__*,int) ; 
 int v ; 

tree
FUNC9 (tree type, tree init)
{
  FUNC2(constructor_elt, gc) *v;
  reshape_iter d;
  tree new_init;

  FUNC7 (FUNC0 (init));

  v = FUNC1 (init);

  /* An empty constructor does not need reshaping, and it is always a valid
     initializer.  */
  if (FUNC3 (constructor_elt, v))
    return init;

  /* Recurse on this CONSTRUCTOR.  */
  d.cur = FUNC4 (constructor_elt, v, 0);
  d.end = d.cur + FUNC5 (constructor_elt, v);

  new_init = FUNC8 (type, &d, true);
  if (new_init == error_mark_node)
    return error_mark_node;

  /* Make sure all the element of the constructor were used. Otherwise,
     issue an error about exceeding initializers.  */
  if (d.cur != d.end)
    FUNC6 ("too many initializers for %qT", type);

  return new_init;
}