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
struct loop {TYPE_1__* single_exit; } ;
typedef  TYPE_1__* edge ;
struct TYPE_3__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct loop* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC7 (tree var)
{
  struct loop *loop;
  edge exit;
  tree phi;

  if (var == NULL_TREE
      || FUNC4 (var) != SSA_NAME)
    return NULL_TREE;

  loop = FUNC5 (FUNC3 (var));
  exit = loop->single_exit;
  if (!exit)
    return NULL_TREE;

  for (phi = FUNC6 (exit->dest); phi; phi = FUNC1 (phi))
    if (FUNC0 (phi, exit) == var)
      return FUNC2 (phi);

  return NULL_TREE;
}