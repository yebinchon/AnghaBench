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
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 scalar_t__ FUNC1 (struct type*,int,int,struct type**) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct type* builtin_type_ada_int ; 
 struct type* FUNC4 (int /*<<< orphan*/ ) ; 
 struct value* FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct value* FUNC9 (struct type*,scalar_t__) ; 

struct value *
FUNC10 (struct value *arr, int n)
{
  struct type *arr_type = FUNC4 (FUNC0 (arr));
  struct type *index_type_desc;

  if (FUNC2 (arr_type))
    return FUNC10 (FUNC5 (arr), n);

  if (FUNC3 (arr_type))
    {
      struct type *type;
      LONGEST v =
	FUNC1 (arr_type, n, 1, &type) -
	FUNC1 (arr_type, n, 0, NULL) + 1;
      return FUNC9 (type, v);
    }
  else
    return
      FUNC9 (builtin_type_ada_int,
			  FUNC8 (FUNC7 (FUNC6 (arr),
							 n, 1))
			  - FUNC8 (FUNC7 (FUNC6 (arr),
							   n, 0)) + 1);
}