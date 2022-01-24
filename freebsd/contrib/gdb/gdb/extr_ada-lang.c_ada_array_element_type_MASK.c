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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 

struct type *
FUNC6 (struct type *type, int nindices)
{
  type = FUNC4 (type);

  if (FUNC0 (type) == TYPE_CODE_STRUCT)
    {
      int k;
      struct type *p_array_type;

      p_array_type = FUNC5 (type);

      k = FUNC2 (type);
      if (k == 0)
	return NULL;

      /* Initially p_array_type = elt_type(*)[]...(k times)...[] */
      if (nindices >= 0 && k > nindices)
	k = nindices;
      p_array_type = FUNC1 (p_array_type);
      while (k > 0 && p_array_type != NULL)
	{
	  p_array_type = FUNC3 (FUNC1 (p_array_type));
	  k -= 1;
	}
      return p_array_type;
    }
  else if (FUNC0 (type) == TYPE_CODE_ARRAY)
    {
      while (nindices != 0 && FUNC0 (type) == TYPE_CODE_ARRAY)
	{
	  type = FUNC1 (type);
	  nindices -= 1;
	}
      return type;
    }

  return NULL;
}