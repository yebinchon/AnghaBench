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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF_TYPE ; 
 scalar_t__ FUNC0 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC1 (struct data_reference*) ; 
 scalar_t__ FUNC2 (struct data_reference*) ; 
 scalar_t__ FUNC3 (struct data_reference*) ; 
 scalar_t__ MULT_EXPR ; 
 scalar_t__ POINTER_REF_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (struct data_reference*,struct data_reference*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,struct data_reference*,struct data_reference*,int*) ; 

__attribute__((used)) static bool
FUNC13 (struct data_reference *dra,
		    struct data_reference *drb,
		    bool *differ_p)
{
  tree addr_a = FUNC0 (dra);
  tree addr_b = FUNC0 (drb);
  tree type_a, type_b;
  bool aliased;

  if (!addr_a || !addr_b)
    return false;

  type_a = FUNC8 (addr_a);
  type_b = FUNC8 (addr_b);

  FUNC11 (FUNC4 (type_a) &&  FUNC4 (type_b));

  /* 1. if (both DRA and DRB are represented as arrays)
            compare DRA.BASE_OBJECT and DRB.BASE_OBJECT.  */
  if (FUNC3 (dra) == ARRAY_REF_TYPE && FUNC3 (drb) == ARRAY_REF_TYPE)
    return FUNC10 (dra, drb, differ_p);

  /* 2. else if (both DRA and DRB are represented as pointers)
	    try to prove that DRA.FIRST_LOCATION == DRB.FIRST_LOCATION.  */
  /* If base addresses are the same, we check the offsets, since the access of 
     the data-ref is described by {base addr + offset} and its access function,
     i.e., in order to decide whether the bases of data-refs are the same we 
     compare both base addresses and offsets.  */
  if (FUNC3 (dra) == POINTER_REF_TYPE && FUNC3 (drb) == POINTER_REF_TYPE
      && (addr_a == addr_b 
	  || (FUNC6 (addr_a) == ADDR_EXPR && FUNC6 (addr_b) == ADDR_EXPR
	      && FUNC7 (addr_a, 0) == FUNC7 (addr_b, 0))))
    {
      /* Compare offsets.  */
      tree offset_a = FUNC2 (dra); 
      tree offset_b = FUNC2 (drb);
      
      FUNC5 (offset_a);
      FUNC5 (offset_b);

      /* FORNOW: we only compare offsets that are MULT_EXPR, i.e., we don't handle
	 PLUS_EXPR.  */
      if (offset_a == offset_b
	  || (FUNC6 (offset_a) == MULT_EXPR 
	      && FUNC6 (offset_b) == MULT_EXPR
	      && FUNC7 (offset_a, 0) == FUNC7 (offset_b, 0)
	      && FUNC7 (offset_a, 1) == FUNC7 (offset_b, 1)))
	{
	  *differ_p = false;
	  return true;
	}
    }

  /*  3. else if (DRA and DRB are represented differently or 2. fails) 
              only try to prove that the bases are surely different.  */

  /* Apply alias analysis.  */
  if (FUNC12 (addr_a, addr_b, dra, drb, &aliased) && !aliased)
    {
      *differ_p = true;
      return true;
    }
  
  /* An instruction writing through a restricted pointer is "independent" of any 
     instruction reading or writing through a different pointer, in the same 
     block/scope.  */
  else if ((FUNC9 (type_a) && !FUNC1 (dra))
      || (FUNC9 (type_b) && !FUNC1 (drb)))
    {
      *differ_p = true;
      return true;
    }
  return false;
}