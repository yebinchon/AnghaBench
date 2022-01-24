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
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (struct type*) ; 
 scalar_t__ FUNC9 (struct type*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*) ; 
 int /*<<< orphan*/  FUNC11 (struct type*) ; 
 scalar_t__ FUNC12 (struct value*) ; 
 struct value* FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC14 (struct value**,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct value *
FUNC15 (struct value *arr)
{
  struct type *type = FUNC5 (FUNC4 (arr));
  if (FUNC9 (type))
    {
      struct type *bounds_type =
	FUNC6 (FUNC11 (type));
      LONGEST addr;

      if (&desc_bounds_type == NULL)
	FUNC7 ("Bad GNAT array descriptor");

      /* NOTE: The following calculation is not really kosher, but
         since desc_type is an XVE-encoded type (and shouldn't be),
         the correct calculation is a real pain. FIXME (and fix GCC). */
      if (FUNC0 (type) == TYPE_CODE_PTR)
	addr = FUNC12 (arr);
      else
	addr = FUNC2 (arr) + FUNC3 (arr);

      return
	FUNC13 (FUNC10 (bounds_type),
			    addr - FUNC1 (bounds_type));
    }

  else if (FUNC8 (type))
    return FUNC14 (&arr, NULL, "P_BOUNDS", NULL,
			     "Bad GNAT array descriptor");
  else
    return NULL;
}