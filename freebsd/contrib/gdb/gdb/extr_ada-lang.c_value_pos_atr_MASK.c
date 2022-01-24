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
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_ada_int ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct value*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct value *
FUNC8 (struct value *arg)
{
  struct type *type = FUNC3 (arg);

  if (!FUNC4 (type))
    FUNC5 ("'POS only defined on discrete types");

  if (FUNC0 (type) == TYPE_CODE_ENUM)
    {
      int i;
      LONGEST v = FUNC6 (arg);

      for (i = 0; i < FUNC2 (type); i += 1)
	{
	  if (v == FUNC1 (type, i))
	    return FUNC7 (builtin_type_ada_int, i);
	}
      FUNC5 ("enumeration value is invalid: can't find 'POS");
    }
  else
    return FUNC7 (builtin_type_ada_int, FUNC6 (arg));
}