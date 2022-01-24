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
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 struct type* FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 struct type* FUNC6 (struct type*,char*) ; 
 struct type* FUNC7 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct value*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct type* FUNC9 (struct type*) ; 
 struct type* FUNC10 (int /*<<< orphan*/ ,struct type*,struct type*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct type* FUNC12 (int /*<<< orphan*/ ,struct value*,int /*<<< orphan*/ ) ; 
 scalar_t__ varsize_limit ; 

__attribute__((used)) static struct type *
FUNC13 (struct type *type0, struct value *dval,
		     int ignore_too_big)
{
  struct type *index_type_desc;
  struct type *result;

  /* FIXME:  TYPE_FLAG_FIXED_INSTANCE should be defined in gdbtypes.h */
/*  if (ada_is_packed_array_type (type0)  /* revisit? *//*
   || (TYPE_FLAGS (type0) & TYPE_FLAG_FIXED_INSTANCE))
   return type0; */

  index_type_desc = FUNC6 (type0, "___XA");
  if (index_type_desc == NULL)
    {
      struct type *elt_type0 = FUNC9 (FUNC5 (type0));
      /* NOTE: elt_type---the fixed version of elt_type0---should never
       * depend on the contents of the array in properly constructed
       * debugging data. */
      struct type *elt_type = FUNC7 (elt_type0, 0, 0, dval);

      if (elt_type0 == elt_type)
	result = type0;
      else
	result = FUNC10 (FUNC8 (FUNC4 (type0)),
				    elt_type, FUNC1 (type0));
    }
  else
    {
      int i;
      struct type *elt_type0;

      elt_type0 = type0;
      for (i = FUNC3 (index_type_desc); i > 0; i -= 1)
	elt_type0 = FUNC5 (elt_type0);

      /* NOTE: result---the fixed version of elt_type0---should never
       * depend on the contents of the array in properly constructed
       * debugging data. */
      result = FUNC7 (FUNC9 (elt_type0), 0, 0, dval);
      for (i = FUNC3 (index_type_desc) - 1; i >= 0; i -= 1)
	{
	  struct type *range_type =
	    FUNC12 (FUNC0 (index_type_desc, i),
				 dval, FUNC4 (type0));
	  result = FUNC10 (FUNC8 (FUNC4 (type0)),
				      result, range_type);
	}
      if (!ignore_too_big && FUNC2 (result) > varsize_limit)
	FUNC11 ("array type with dynamic size is larger than varsize-limit");
    }

/* FIXME:  TYPE_FLAG_FIXED_INSTANCE should be defined in gdbtypes.h */
/*  TYPE_FLAGS (result) |= TYPE_FLAG_FIXED_INSTANCE; */
  return result;
}