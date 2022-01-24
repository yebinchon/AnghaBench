#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* funct_state ;
struct TYPE_3__ {scalar_t__ pure_const_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPA_CONST ; 
 void* IPA_NEITHER ; 
 void* IPA_PURE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void 
FUNC9 (funct_state local, 
	    tree t, bool checking_write)
{
  /* If the variable has the "used" attribute, treat it as if it had a
     been touched by the devil.  */
  if (FUNC8 ("used", FUNC0 (t)))
    {
      local->pure_const_state = IPA_NEITHER;
      return;
    }

  /* Do not want to do anything with volatile except mark any
     function that uses one to be not const or pure.  */
  if (FUNC6 (t)) 
    { 
      local->pure_const_state = IPA_NEITHER;
      return;
    }

  /* Do not care about a local automatic that is not static.  */
  if (!FUNC5 (t) && !FUNC1 (t))
    return;

  /* Since we have dealt with the locals and params cases above, if we
     are CHECKING_WRITE, this cannot be a pure or constant
     function.  */
  if (checking_write) 
    local->pure_const_state = IPA_NEITHER;

  if (FUNC1 (t) || FUNC3 (t))
    {
      /* If the front end set the variable to be READONLY and
	 constant, we can allow this variable in pure or const
	 functions but the scope is too large for our analysis to set
	 these bits ourselves.  */
      
      if (FUNC4 (t)
	  && FUNC2 (t)
	  && FUNC7 (FUNC2 (t)))
	; /* Read of a constant, do not change the function state.  */
      else 
	{
	  /* Just a regular read.  */
	  if (local->pure_const_state == IPA_CONST)
	    local->pure_const_state = IPA_PURE;
	}
    }
  
  /* Compilation level statics can be read if they are readonly
     variables.  */
  if (FUNC4 (t))
    return;

  /* Just a regular read.  */
  if (local->pure_const_state == IPA_CONST)
    local->pure_const_state = IPA_PURE;
}