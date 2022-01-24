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
struct objfile {int dummy; } ;

/* Variables and functions */
 struct objfile* FUNC0 (struct type*) ; 
 struct type* FUNC1 (int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (struct value*) ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct objfile*) ; 
 struct type* FUNC8 (struct type*) ; 
 struct type* FUNC9 (struct type*,struct type*,struct type*) ; 
 int /*<<< orphan*/  FUNC10 (struct type*,struct type*,int,int) ; 
 struct type* FUNC11 (struct type*) ; 
 struct value* FUNC12 (struct value*) ; 
 int /*<<< orphan*/  FUNC13 (struct type*) ; 
 struct value* FUNC14 (struct value*,int,int) ; 
 struct type* FUNC15 (struct type*) ; 
 scalar_t__ FUNC16 (struct value*) ; 

struct type *
FUNC17 (struct value *arr, int bounds)
{
  if (FUNC6 (FUNC2 (arr)))
    return FUNC11 (FUNC2 (arr));

  if (!FUNC5 (FUNC2 (arr)))
    return FUNC2 (arr);

  if (!bounds)
    return
      FUNC8 (FUNC1 (FUNC13 (FUNC2 (arr))));
  else
    {
      struct type *elt_type;
      int arity;
      struct value *descriptor;
      struct objfile *objf = FUNC0 (FUNC2 (arr));

      elt_type = FUNC4 (FUNC2 (arr), -1);
      arity = FUNC3 (FUNC2 (arr));

      if (elt_type == NULL || arity == 0)
	return FUNC8 (FUNC2 (arr));

      descriptor = FUNC12 (arr);
      if (FUNC16 (descriptor) == 0)
	return NULL;
      while (arity > 0)
	{
	  struct type *range_type = FUNC7 (objf);
	  struct type *array_type = FUNC7 (objf);
	  struct value *low = FUNC14 (descriptor, arity, 0);
	  struct value *high = FUNC14 (descriptor, arity, 1);
	  arity -= 1;

	  FUNC10 (range_type, FUNC2 (low),
			     (int) FUNC16 (low),
			     (int) FUNC16 (high));
	  elt_type = FUNC9 (array_type, elt_type, range_type);
	}

      return FUNC15 (elt_type);
    }
}