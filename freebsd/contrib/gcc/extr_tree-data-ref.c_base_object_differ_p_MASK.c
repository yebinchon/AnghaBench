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
typedef  scalar_t__ tree ;
struct data_reference {int dummy; } ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (struct data_reference*) ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,struct data_reference*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__,struct data_reference*,struct data_reference*,int*) ; 
 scalar_t__ FUNC6 (struct data_reference*,struct data_reference*) ; 
 scalar_t__ FUNC7 (struct data_reference*,struct data_reference*) ; 
 scalar_t__ FUNC8 (struct data_reference*,struct data_reference*) ; 

__attribute__((used)) static bool
FUNC9 (struct data_reference *a,
		      struct data_reference *b,
		      bool *differ_p)
{
  tree base_a = FUNC0 (a);
  tree base_b = FUNC0 (b);
  bool aliased;

  if (!base_a || !base_b)
    return false;

  /* Determine if same base.  Example: for the array accesses
     a[i], b[i] or pointer accesses *a, *b, bases are a, b.  */
  if (base_a == base_b)
    {
      *differ_p = false;
      return true;
    }

  /* For pointer based accesses, (*p)[i], (*q)[j], the bases are (*p)
     and (*q)  */
  if (FUNC1 (base_a) == INDIRECT_REF && FUNC1 (base_b) == INDIRECT_REF
      && FUNC2 (base_a, 0) == FUNC2 (base_b, 0))
    {
      *differ_p = false;
      return true;
    }

  /* Record/union based accesses - s.a[i], t.b[j]. bases are s.a,t.b.  */ 
  if (FUNC1 (base_a) == COMPONENT_REF && FUNC1 (base_b) == COMPONENT_REF
      && FUNC2 (base_a, 0) == FUNC2 (base_b, 0)
      && FUNC2 (base_a, 1) == FUNC2 (base_b, 1))
    {
      *differ_p = false;
      return true;
    }


  /* Determine if different bases.  */

  /* At this point we know that base_a != base_b.  However, pointer
     accesses of the form x=(*p) and y=(*q), whose bases are p and q,
     may still be pointing to the same base. In SSAed GIMPLE p and q will
     be SSA_NAMES in this case.  Therefore, here we check if they are
     really two different declarations.  */
  if (FUNC1 (base_a) == VAR_DECL && FUNC1 (base_b) == VAR_DECL)
    {
      *differ_p = true;
      return true;
    }

  /* In case one of the bases is a pointer (a[i] and (*p)[i]), we check with the
     help of alias analysis that p is not pointing to a.  */
  if (FUNC4 (base_a, base_b, b) 
      || FUNC4 (base_b, base_a, a))
    {
      *differ_p = true;
      return true;
    }

  /* If the bases are pointers ((*q)[i] and (*p)[i]), we check with the
     help of alias analysis they don't point to the same bases.  */
  if (FUNC1 (base_a) == INDIRECT_REF && FUNC1 (base_b) == INDIRECT_REF 
      && (FUNC5 (FUNC2 (base_a, 0), FUNC2 (base_b, 0), a, b, 
		       &aliased)
	  && !aliased))
    {
      *differ_p = true;
      return true;
    }

  /* Compare two record/union bases s.a and t.b: s != t or (a != b and
     s and t are not unions).  */
  if (FUNC1 (base_a) == COMPONENT_REF && FUNC1 (base_b) == COMPONENT_REF
      && ((FUNC1 (FUNC2 (base_a, 0)) == VAR_DECL
           && FUNC1 (FUNC2 (base_b, 0)) == VAR_DECL
           && FUNC2 (base_a, 0) != FUNC2 (base_b, 0))
          || (FUNC1 (FUNC3 (FUNC2 (base_a, 0))) == RECORD_TYPE 
              && FUNC1 (FUNC3 (FUNC2 (base_b, 0))) == RECORD_TYPE
              && FUNC2 (base_a, 1) != FUNC2 (base_b, 1))))
    {
      *differ_p = true;
      return true;
    }

  /* Compare a record/union access (b.c[i] or p->c[i]) and a pointer
     ((*q)[i]).  */
  if (FUNC7 (a, b) || FUNC7 (b, a))
    {
      *differ_p = true;
      return true;
    }

  /* Compare a record/union access (b.c[i] or p->c[i]) and an array access 
     (a[i]). In case of p->c[i] use alias analysis to verify that p is not
     pointing to a.  */
  if (FUNC6 (a, b) || FUNC6 (b, a))
    {
      *differ_p = true;
      return true;
    }

  /* Compare two record/union accesses (b.c[i] or p->c[i]).  */
  if (FUNC8 (a, b))
    {
      *differ_p = true;
      return true;
    }

  return false;
}