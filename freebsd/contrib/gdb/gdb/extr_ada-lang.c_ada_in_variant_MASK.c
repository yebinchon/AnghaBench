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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 char* FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ *,int*) ; 

int
FUNC2 (LONGEST val, struct type *type, int field_num)
{
  const char *name = FUNC0 (type, field_num);
  int p;

  p = 0;
  while (1)
    {
      switch (name[p])
	{
	case '\0':
	  return 0;
	case 'S':
	  {
	    LONGEST W;
	    if (!FUNC1 (name, p + 1, &W, &p))
	      return 0;
	    if (val == W)
	      return 1;
	    break;
	  }
	case 'R':
	  {
	    LONGEST L, U;
	    if (!FUNC1 (name, p + 1, &L, &p)
		|| name[p] != 'T' || !FUNC1 (name, p + 1, &U, &p))
	      return 0;
	    if (val >= L && val <= U)
	      return 1;
	    break;
	  }
	case 'O':
	  return 1;
	default:
	  return 0;
	}
    }
}