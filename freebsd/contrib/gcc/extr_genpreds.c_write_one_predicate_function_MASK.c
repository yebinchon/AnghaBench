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
struct pred_data {char* name; int /*<<< orphan*/  exp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pred_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pred_data*) ; 

__attribute__((used)) static void
FUNC5 (struct pred_data *p)
{
  if (!p->exp)
    return;

  FUNC4 (p);
  FUNC0 (p);

  /* A normal predicate can legitimately not look at enum machine_mode
     if it accepts only CONST_INTs and/or CONST_DOUBLEs.  */
  FUNC2 ("int\n%s (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)\n{\n",
	  p->name);
  FUNC3 (p->exp);
  FUNC1 ("}\n\n", stdout);
}