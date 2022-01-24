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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {TYPE_1__** parray; } ;
struct TYPE_3__ {int /*<<< orphan*/  estimated_nb_iterations; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current_loops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC3 (int loopnum)
{
  tree numiter = FUNC2 (current_loops->parray[loopnum]);

  if (FUNC0 (numiter) != INTEGER_CST)
    numiter = current_loops->parray[loopnum]->estimated_nb_iterations;
  if (FUNC1 (numiter))
    return NULL_TREE;
  return numiter;
}