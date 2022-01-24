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
struct target_ops {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct target_ops*,char**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct target_ops*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3 (struct target_ops *ops, CORE_ADDR match, CORE_ADDR *valp)
{
  CORE_ADDR type, val;
  char *data;
  int n = FUNC1 (ops, &data);
  char *ptr = data;
  int ents = 0;

  if (n <= 0)
    return n;

  while (1)
    switch (FUNC0 (ops, &ptr, data + n, &type, &val))
      {
      case 1:			/* Here's an entry, check it.  */
	if (type == match)
	  {
	    FUNC2 (data);
	    *valp = val;
	    return 1;
	  }
	break;
      case 0:			/* End of the vector.  */
	FUNC2 (data);
	return 0;
      default:			/* Bogosity.  */
	FUNC2 (data);
	return -1;
      }

  /*NOTREACHED*/
}