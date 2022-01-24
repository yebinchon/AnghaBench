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

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (struct value*) ; 
 struct type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 struct value* FUNC7 (struct value*,int /*<<< orphan*/ ) ; 
 struct value* FUNC8 (struct value*,int,struct value**) ; 

struct value *
FUNC9 (struct value *arr, int arity, struct value **ind)
{
  int k;
  struct value *elt;
  struct type *elt_type;

  elt = FUNC3 (arr);

  elt_type = FUNC4 (FUNC2 (elt));
  if (FUNC0 (elt_type) == TYPE_CODE_ARRAY
      && FUNC1 (elt_type, 0) > 0)
    return FUNC8 (elt, arity, ind);

  for (k = 0; k < arity; k += 1)
    {
      if (FUNC0 (elt_type) != TYPE_CODE_ARRAY)
	FUNC5 ("too many subscripts (%d expected)", k);
      elt = FUNC7 (elt, FUNC6 (ind[k]));
    }
  return elt;
}