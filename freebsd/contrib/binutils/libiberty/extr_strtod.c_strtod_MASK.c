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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 double FUNC2 (char*) ; 

double
FUNC3 (char *str, char **ptr)
{
  char *p;

  if (ptr == (char **)0)
    return FUNC2 (str);
  
  p = str;
  
  while (FUNC1 (*p))
    ++p;
  
  if (*p == '+' || *p == '-')
    ++p;

  /* INF or INFINITY.  */
  if ((p[0] == 'i' || p[0] == 'I')
      && (p[1] == 'n' || p[1] == 'N')
      && (p[2] == 'f' || p[2] == 'F'))
    {
      if ((p[3] == 'i' || p[3] == 'I')
	  && (p[4] == 'n' || p[4] == 'N')
	  && (p[5] == 'i' || p[5] == 'I')
	  && (p[6] == 't' || p[6] == 'T')
	  && (p[7] == 'y' || p[7] == 'Y'))
	{
	  *ptr = p + 8;
	  return FUNC2 (str);
	}
      else
	{
	  *ptr = p + 3;
	  return FUNC2 (str);
	}
    }

  /* NAN or NAN(foo).  */
  if ((p[0] == 'n' || p[0] == 'N')
      && (p[1] == 'a' || p[1] == 'A')
      && (p[2] == 'n' || p[2] == 'N'))
    {
      p += 3;
      if (*p == '(')
	{
	  ++p;
	  while (*p != '\0' && *p != ')')
	    ++p;
	  if (*p == ')')
	    ++p;
	}
      *ptr = p;
      return FUNC2 (str);
    }

  /* digits, with 0 or 1 periods in it.  */
  if (FUNC0 (*p) || *p == '.')
    {
      int got_dot = 0;
      while (FUNC0 (*p) || (!got_dot && *p == '.'))
	{
	  if (*p == '.')
	    got_dot = 1;
	  ++p;
	}

      /* Exponent.  */
      if (*p == 'e' || *p == 'E')
	{
	  int i;
	  i = 1;
	  if (p[i] == '+' || p[i] == '-')
	    ++i;
	  if (FUNC0 (p[i]))
	    {
	      while (FUNC0 (p[i]))
		++i;
	      *ptr = p + i;
	      return FUNC2 (str);
	    }
	}
      *ptr = p;
      return FUNC2 (str);
    }
  /* Didn't find any digits.  Doesn't look like a number.  */
  *ptr = str;
  return 0.0;
}