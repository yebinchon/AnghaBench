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
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_FLT ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 

__attribute__((used)) static int
FUNC4 (struct type *type)
{
  enum type_code typecode = FUNC0 (type);

  if (typecode == TYPE_CODE_FLT && FUNC2 (type) == 8)
    return 1;
  else if (typecode == TYPE_CODE_STRUCT)
    {
      if (FUNC3 (type) < 1)
	return 0;
      return FUNC4 (FUNC1 (type, 0));
    }
  else if (typecode == TYPE_CODE_UNION)
    {
      int i, n;

      n = FUNC3 (type);
      for (i = 0; i < n; i++)
	if (FUNC4 (FUNC1 (type, i)))
	  return 1;
      return 0;
    }
  return 0;
}