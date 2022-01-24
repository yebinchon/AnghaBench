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
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (struct data_reference*) ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct data_reference*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct data_reference*,struct data_reference*,int*) ; 

__attribute__((used)) static bool
FUNC5 (struct data_reference *dra,
		     struct data_reference *drb)
{
  bool aliased;
  tree base_a = FUNC0 (dra);
  tree base_b = FUNC0 (drb);

  if (FUNC1 (base_b) != COMPONENT_REF)
    return false;

  /* Peel COMPONENT_REFs to get to the base. Do not peel INDIRECT_REFs.
     For a.b.c.d[i] we will get a, and for a.b->c.d[i] we will get a.b.  
     Probably will be unnecessary with struct alias analysis.  */
  while (FUNC1 (base_b) == COMPONENT_REF)
     base_b = FUNC2 (base_b, 0);
  /* Compare a record/union access (b.c[i] or p->c[i]) and a pointer
     ((*q)[i]).  */
  if (FUNC1 (base_a) == INDIRECT_REF
      && ((FUNC1 (base_b) == VAR_DECL
	   && (FUNC3 (FUNC2 (base_a, 0), base_b, dra, 
				     &aliased)
	       && !aliased))
	  || (FUNC1 (base_b) == INDIRECT_REF
	      && (FUNC4 (FUNC2 (base_a, 0), 
				       FUNC2 (base_b, 0), dra, drb, 
				       &aliased)
		  && !aliased))))
    return true;
  else
    return false;
}