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
 int FUNC0 (struct type*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3 (int regnum, struct type *type)
{
  int len = FUNC0 (type);

  /* Values may be spread across multiple registers.  Most debugging
     formats aren't expressive enough to specify the locations, so
     some heuristics is involved.  Right now we only handle types that
     have a length that is a multiple of the word size, since GCC
     doesn't seem to put any other types into registers.  */
  if (len > 4 && len % 4 == 0)
    {
      int last_regnum = regnum;

      while (len > 4)
	{
	  last_regnum = FUNC2 (last_regnum);
	  len -= 4;
	}

      if (last_regnum != -1)
	return 1;
    }

  return FUNC1 (regnum);
}