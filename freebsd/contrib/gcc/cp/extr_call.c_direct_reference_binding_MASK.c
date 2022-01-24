#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {int need_temporary_p; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ck_base ; 
 int /*<<< orphan*/  ck_ref_bind ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static conversion *
FUNC5 (tree type, conversion *conv)
{
  tree t;

  FUNC3 (FUNC0 (type) == REFERENCE_TYPE);
  FUNC3 (FUNC0 (conv->type) != REFERENCE_TYPE);

  t = FUNC1 (type);

  /* [over.ics.rank]

     When a parameter of reference type binds directly
     (_dcl.init.ref_) to an argument expression, the implicit
     conversion sequence is the identity conversion, unless the
     argument expression has a type that is a derived class of the
     parameter type, in which case the implicit conversion sequence is
     a derived-to-base Conversion.

     If the parameter binds directly to the result of applying a
     conversion function to the argument expression, the implicit
     conversion sequence is a user-defined conversion sequence
     (_over.ics.user_), with the second standard conversion sequence
     either an identity conversion or, if the conversion function
     returns an entity of a type that is a derived class of the
     parameter type, a derived-to-base conversion.  */
  if (!FUNC4 (t, conv->type))
    {
      /* Represent the derived-to-base conversion.  */
      conv = FUNC2 (ck_base, t, conv);
      /* We will actually be binding to the base-class subobject in
	 the derived class, so we mark this conversion appropriately.
	 That way, convert_like knows not to generate a temporary.  */
      conv->need_temporary_p = false;
    }
  return FUNC2 (ck_ref_bind, type, conv);
}