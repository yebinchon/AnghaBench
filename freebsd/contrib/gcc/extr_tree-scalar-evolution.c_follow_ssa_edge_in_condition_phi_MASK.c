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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ t_bool ;
struct loop {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ t_dont_know ; 
 scalar_t__ t_false ; 
 scalar_t__ t_true ; 

__attribute__((used)) static t_bool
FUNC3 (struct loop *loop,
				  tree condition_phi, 
				  tree halting_phi, 
				  tree *evolution_of_loop, int limit)
{
  int i;
  tree init = *evolution_of_loop;
  tree evolution_of_branch;
  t_bool res = FUNC2 (0, loop, condition_phi,
							halting_phi,
							&evolution_of_branch,
							init, limit);
  if (res == t_false || res == t_dont_know)
    return res;

  *evolution_of_loop = evolution_of_branch;

  for (i = 1; i < FUNC0 (condition_phi); i++)
    {
      /* Quickly give up when the evolution of one of the branches is
	 not known.  */
      if (*evolution_of_loop == chrec_dont_know)
	return t_true;

      res = FUNC2 (i, loop, condition_phi,
						     halting_phi,
						     &evolution_of_branch,
						     init, limit);
      if (res == t_false || res == t_dont_know)
	return res;

      *evolution_of_loop = FUNC1 (*evolution_of_loop,
					evolution_of_branch);
    }
  
  return t_true;
}