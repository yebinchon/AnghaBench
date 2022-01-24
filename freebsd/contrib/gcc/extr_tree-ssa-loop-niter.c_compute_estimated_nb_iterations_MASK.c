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
struct nb_iter_bound {int /*<<< orphan*/  bound; struct nb_iter_bound* next; } ;
struct loop {int /*<<< orphan*/  estimated_nb_iterations; struct nb_iter_bound* bounds; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct loop *loop)
{
  struct nb_iter_bound *bound;
  
  for (bound = loop->bounds; bound; bound = bound->next)
    {
      if (FUNC0 (bound->bound) != INTEGER_CST)
	continue;

      /* Update only when there is no previous estimation, or when the current
	 estimation is smaller.  */
      if (FUNC1 (loop->estimated_nb_iterations)
	  || FUNC2 (bound->bound, loop->estimated_nb_iterations))
	loop->estimated_nb_iterations = bound->bound;
    }
}