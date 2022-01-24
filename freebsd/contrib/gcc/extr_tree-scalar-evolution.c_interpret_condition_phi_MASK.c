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
struct loop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_not_analyzed_yet ; 

__attribute__((used)) static tree
FUNC5 (struct loop *loop, tree condition_phi)
{
  int i;
  tree res = chrec_not_analyzed_yet;
  
  for (i = 0; i < FUNC1 (condition_phi); i++)
    {
      tree branch_chrec;
      
      if (FUNC3 (condition_phi, i))
	{
	  res = chrec_dont_know;
	  break;
	}

      branch_chrec = FUNC2
	(loop, FUNC0 (condition_phi, i));
      
      res = FUNC4 (res, branch_chrec);
    }

  return res;
}