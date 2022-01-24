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
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*,char*,int) ; 
 struct type* FUNC6 (struct type*) ; 

__attribute__((used)) static struct type *
FUNC7 (struct type *type)
{
  struct type *r;

  type = FUNC3 (type);

  if (type == NULL)
    return NULL;
  else if (FUNC4 (type))
    {
      type = FUNC6 (type);
      if (type == NULL)
	return NULL;
      r = FUNC5 (type, "BOUNDS", 1);
      if (r != NULL)
	return FUNC2 (r);
    }
  else if (FUNC0 (type) == TYPE_CODE_STRUCT)
    {
      r = FUNC5 (type, "P_BOUNDS", 1);
      if (r != NULL)
	return FUNC2 (FUNC1 (FUNC2 (r)));
    }
  return NULL;
}