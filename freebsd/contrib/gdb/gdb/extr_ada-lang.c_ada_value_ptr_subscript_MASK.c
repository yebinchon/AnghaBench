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
 scalar_t__ TYPE_CODE_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 struct value* FUNC6 (struct value*,struct value*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC10 (struct value*) ; 
 struct value* FUNC11 (struct value*,int /*<<< orphan*/ ) ; 

struct value *
FUNC12 (struct value *arr, struct type *type, int arity,
			 struct value **ind)
{
  int k;

  for (k = 0; k < arity; k += 1)
    {
      LONGEST lwb, upb;
      struct value *idx;

      if (FUNC0 (type) != TYPE_CODE_ARRAY)
	FUNC3 ("too many subscripts (%d expected)", k);
      arr = FUNC7 (FUNC5 (FUNC2 (type)),
			FUNC8 (arr));
      FUNC4 (FUNC1 (type), &lwb, &upb);
      if (lwb == 0)
	idx = ind[k];
      else
	idx = FUNC11 (ind[k], FUNC9 (builtin_type_int, lwb));
      arr = FUNC6 (arr, idx);
      type = FUNC2 (type);
    }

  return FUNC10 (arr);
}