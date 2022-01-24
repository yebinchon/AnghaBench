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
typedef  int LONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*,int) ; 
 struct type* FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 int FUNC5 (struct type*) ; 
 int FUNC6 (struct type*) ; 
 int FUNC7 (struct type*,int,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (struct type*,int,struct type*) ; 

int
FUNC10 (struct type *type, int index, char *valaddr,
		  CORE_ADDR address)
{
  struct type *basetype = FUNC1 (type, index);

  if (FUNC0 (type, index))
    {
      /* Must hunt for the pointer to this virtual baseclass.  */
      int i, len = FUNC5 (type);
      int n_baseclasses = FUNC6 (type);

      /* First look for the virtual baseclass pointer
         in the fields.  */
      for (i = n_baseclasses; i < len; i++)
	{
	  if (FUNC9 (type, i, basetype))
	    {
	      CORE_ADDR addr
	      = FUNC8 (FUNC4 (type, i),
				valaddr + (FUNC3 (type, i) / 8));

	      return addr - (LONGEST) address;
	    }
	}
      /* Not in the fields, so try looking through the baseclasses.  */
      for (i = index + 1; i < n_baseclasses; i++)
	{
	  int boffset =
	  FUNC7 (type, i, valaddr, address);
	  if (boffset)
	    return boffset;
	}
      /* Not found.  */
      return -1;
    }

  /* Baseclass is easily computed.  */
  return FUNC2 (type, index) / 8;
}