#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* funct_state ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ IPA_CONST ; 
 scalar_t__ IPA_PURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC3 (funct_state local, tree t)
{
  if (FUNC0 (t) == ADDR_EXPR)
    {
      tree x = FUNC2 (t);
      if (FUNC0 (x) == VAR_DECL) 
	{
	  FUNC1 (local, x, false);
	  
	  /* Taking the address of something appears to be reasonable
	     in PURE code.  Not allowed in const.  */
	  if (local->pure_const_state == IPA_CONST)
	    local->pure_const_state = IPA_PURE;
	}
    }
}