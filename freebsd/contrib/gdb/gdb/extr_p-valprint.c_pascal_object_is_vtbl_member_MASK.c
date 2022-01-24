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
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC1 (struct type*) ; 
 int FUNC2 (struct type*) ; 

int
FUNC3 (struct type *type)
{
  if (FUNC0 (type) == TYPE_CODE_PTR)
    {
      type = FUNC1 (type);
      if (FUNC0 (type) == TYPE_CODE_ARRAY)
	{
	  type = FUNC1 (type);
	  if (FUNC0 (type) == TYPE_CODE_STRUCT	/* if not using thunks */
	      || FUNC0 (type) == TYPE_CODE_PTR)	/* if using thunks */
	    {
	      /* Virtual functions tables are full of pointers
	         to virtual functions. */
	      return FUNC2 (type);
	    }
	}
    }
  return 0;
}