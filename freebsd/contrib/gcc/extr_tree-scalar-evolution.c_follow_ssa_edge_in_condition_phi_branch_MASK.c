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
typedef  int /*<<< orphan*/  t_bool ;
struct loop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  t_false ; 

__attribute__((used)) static inline t_bool
FUNC5 (int i,
					 struct loop *loop, 
					 tree condition_phi, 
					 tree halting_phi,
					 tree *evolution_of_branch,
					 tree init_cond, int limit)
{
  tree branch = FUNC0 (condition_phi, i);
  *evolution_of_branch = chrec_dont_know;

  /* Do not follow back edges (they must belong to an irreducible loop, which
     we really do not want to worry about).  */
  if (FUNC3 (condition_phi, i))
    return t_false;

  if (FUNC2 (branch) == SSA_NAME)
    {
      *evolution_of_branch = init_cond;
      return FUNC4 (loop, FUNC1 (branch), halting_phi, 
			      evolution_of_branch, limit);
    }

  /* This case occurs when one of the condition branches sets 
     the variable to a constant: i.e. a phi-node like
     "a_2 = PHI <a_7(5), 2(6)>;".  
	 
     FIXME:  This case have to be refined correctly: 
     in some cases it is possible to say something better than
     chrec_dont_know, for example using a wrap-around notation.  */
  return t_false;
}