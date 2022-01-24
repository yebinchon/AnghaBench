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
typedef  int /*<<< orphan*/  conversion ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  LOOKUP_NO_TEMP_BIND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ck_base ; 
 int /*<<< orphan*/  ck_rvalue ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static conversion *
FUNC12 (tree e1, tree e2)
{
  tree t1 = FUNC9 (FUNC2 (e1));
  tree t2 = FUNC9 (FUNC2 (e2));
  conversion *conv;
  bool good_base;

  /* [expr.cond]

     If E2 is an lvalue: E1 can be converted to match E2 if E1 can be
     implicitly converted (clause _conv_) to the type "reference to
     T2", subject to the constraint that in the conversion the
     reference must bind directly (_dcl.init.ref_) to E1.  */
  if (FUNC10 (e2))
    {
      conv = FUNC8 (FUNC7 (t2),
				  t1,
				  e1,
				  /*c_cast_p=*/false,
				  LOOKUP_NO_TEMP_BIND);
      if (conv)
	return conv;
    }

  /* [expr.cond]

     If E1 and E2 have class type, and the underlying class types are
     the same or one is a base class of the other: E1 can be converted
     to match E2 if the class of T2 is the same type as, or a base
     class of, the class of T1, and the cv-qualification of T2 is the
     same cv-qualification as, or a greater cv-qualification than, the
     cv-qualification of T1.  If the conversion is applied, E1 is
     changed to an rvalue of type T2 that still refers to the original
     source class object (or the appropriate subobject thereof).  */
  if (FUNC0 (t1) && FUNC0 (t2)
      && ((good_base = FUNC1 (t2, t1)) || FUNC1 (t1, t2)))
    {
      if (good_base && FUNC4 (t2, t1))
	{
	  conv = FUNC6 (t1, e1);
	  if (!FUNC11 (FUNC3 (t1),
			    FUNC3 (t2)))
	    conv = FUNC5 (ck_base, t2, conv);
	  else
	    conv = FUNC5 (ck_rvalue, t2, conv);
	  return conv;
	}
      else
	return NULL;
    }
  else
    /* [expr.cond]

       Otherwise: E1 can be converted to match E2 if E1 can be implicitly
       converted to the type that expression E2 would have if E2 were
       converted to an rvalue (or the type it has, if E2 is an rvalue).  */
    return FUNC8 (t2, t1, e1, /*c_cast_p=*/false,
				LOOKUP_NORMAL);
}