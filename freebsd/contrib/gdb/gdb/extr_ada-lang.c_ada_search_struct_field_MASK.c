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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*,int) ; 
 char* FUNC2 (struct type*,int) ; 
 struct type* FUNC3 (struct type*,int) ; 
 int FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (struct type*,int) ; 
 scalar_t__ FUNC6 (struct type*,int) ; 
 struct value* FUNC7 (struct value*,int,int,struct type*) ; 
 struct type* FUNC8 (struct type*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

struct value *
FUNC10 (char *name, struct value *arg, int offset,
			 struct type *type)
{
  int i;
  FUNC0 (type);

  for (i = FUNC4 (type) - 1; i >= 0; i -= 1)
    {
      char *t_field_name = FUNC2 (type, i);

      if (t_field_name == NULL)
	continue;

      else if (FUNC9 (t_field_name, name))
	return FUNC7 (arg, offset, i, type);

      else if (FUNC6 (type, i))
	{
	  struct value *v = FUNC10 (name, arg,
						     offset +
						     FUNC1 (type,
									i) /
						     8,
						     FUNC3 (type,
								      i));
	  if (v != NULL)
	    return v;
	}

      else if (FUNC5 (type, i))
	{
	  int j;
	  struct type *field_type = FUNC8 (FUNC3 (type, i));
	  int var_offset = offset + FUNC1 (type, i) / 8;

	  for (j = FUNC4 (field_type) - 1; j >= 0; j -= 1)
	    {
	      struct value *v = FUNC10 (name, arg,
							 var_offset
							 +
							 FUNC1
							 (field_type, j) / 8,
							 FUNC3
							 (field_type, j));
	      if (v != NULL)
		return v;
	    }
	}
    }
  return NULL;
}