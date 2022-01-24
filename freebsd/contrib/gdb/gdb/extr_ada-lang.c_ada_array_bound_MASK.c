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

/* Variables and functions */
 struct type* FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int,int,struct type**) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 struct value* FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct value* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 struct value* FUNC7 (struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC8 (struct value *arr, int n, int which)
{
  struct type *arr_type = FUNC0 (arr);

  if (FUNC2 (arr_type))
    return FUNC8 (FUNC4 (arr), n, which);
  else if (FUNC3 (arr_type))
    {
      struct type *type;
      LONGEST v = FUNC1 (arr_type, n, which, &type);
      return FUNC7 (type, v);
    }
  else
    return FUNC6 (FUNC5 (arr), n, which);
}