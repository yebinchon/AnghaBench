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
struct data_reference {int dummy; } ;

/* Variables and functions */
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct data_reference*,int*) ; 

__attribute__((used)) static bool
FUNC3 (tree base_a, tree base_b, 	     
		    struct data_reference *drb)
{  
  bool aliased;

  /* In case one of the bases is a pointer (a[i] and (*p)[i]), we check with the
     help of alias analysis that p is not pointing to a.  */
  if (FUNC0 (base_a) == VAR_DECL && FUNC0 (base_b) == INDIRECT_REF 
      && (FUNC2 (FUNC1 (base_b, 0), base_a, drb, &aliased)
	  && !aliased))
    return true;
  else
    return false;
}