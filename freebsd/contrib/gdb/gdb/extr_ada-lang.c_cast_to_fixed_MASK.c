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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  DOUBLEST ;

/* Variables and functions */
 struct type* FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_double ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 struct value* FUNC8 (struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct value *
FUNC9 (struct type *type, struct value *arg)
{
  LONGEST val;

  if (type == FUNC0 (arg))
    return arg;
  else if (FUNC3 (FUNC0 (arg)))
    val = FUNC2 (type,
			      FUNC1 (FUNC0 (arg),
						  FUNC5 (arg)));
  else
    {
      DOUBLEST argd =
	FUNC4 (FUNC6 (builtin_type_double, FUNC7 (arg)));
      val = FUNC2 (type, argd);
    }

  return FUNC8 (type, val);
}