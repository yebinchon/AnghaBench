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
typedef  int rc_uint_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (int ch)
{
  rc_uint_type base = 10;
  rc_uint_type ret, val;
  int warned = 0;

  ret = 0;
  if (ch == '0')
    {
      base = 8;
      switch (FUNC1 ())
	{
	case 'o': case 'O':
	  FUNC2 ();
	  base = 8;
	  break;

	case 'x': case 'X':
	  FUNC2 ();
	  base = 16;
	  break;
	}
    }
  else
    ret = (rc_uint_type) (ch - '0');
  while ((ch = FUNC1 ()) != -1)
    {
      if (FUNC0 (ch))
	val = (rc_uint_type) (ch - '0');
      else if (ch >= 'a' && ch <= 'f')
	val = (rc_uint_type) ((ch - 'a') + 10);
      else if (ch >= 'A' && ch <= 'F')
	val = (rc_uint_type) ((ch - 'A') + 10);
      else
	break;
      FUNC2 ();
      if (! warned && val >= base)
	{
	  warned = 1;
	  FUNC3 ("digit exceeds base");
	}
      ret *= base;
      ret += val;
    }
  return ret;
}