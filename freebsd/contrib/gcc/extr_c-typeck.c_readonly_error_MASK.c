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
typedef  enum lvalue_use { ____Placeholder_lvalue_use } lvalue_use ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int lv_asm ; 
 int lv_assign ; 
 int lv_decrement ; 
 int lv_increment ; 

__attribute__((used)) static void
FUNC8 (tree arg, enum lvalue_use use)
{
  FUNC7 (use == lv_assign || use == lv_increment || use == lv_decrement
	      || use == lv_asm);
  /* Using this macro rather than (for example) arrays of messages
     ensures that all the format strings are checked at compile
     time.  */
#define READONLY_MSG(A, I, D, AS) (use == lv_assign ? (A)		\
				   : (use == lv_increment ? (I)		\
				   : (use == lv_decrement ? (D) : (AS))))
  if (FUNC2 (arg) == COMPONENT_REF)
    {
      if (FUNC5 (FUNC4 (FUNC3 (arg, 0))))
	FUNC8 (FUNC3 (arg, 0), use);
      else
	FUNC6 (READONLY_MSG (FUNC0("assignment of read-only member %qD"),
			     FUNC0("increment of read-only member %qD"),
			     FUNC0("decrement of read-only member %qD"),
			     FUNC0("read-only member %qD used as %<asm%> output")),
	       FUNC3 (arg, 1));
    }
  else if (FUNC2 (arg) == VAR_DECL)
    FUNC6 (READONLY_MSG (FUNC0("assignment of read-only variable %qD"),
			 FUNC0("increment of read-only variable %qD"),
			 FUNC0("decrement of read-only variable %qD"),
			 FUNC0("read-only variable %qD used as %<asm%> output")),
	   arg);
  else
    FUNC6 (READONLY_MSG (FUNC0("assignment of read-only location"),
			 FUNC0("increment of read-only location"),
			 FUNC0("decrement of read-only location"),
			 FUNC0("read-only location used as %<asm%> output")));
}