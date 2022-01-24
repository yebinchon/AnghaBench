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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 

int
FUNC4 (char *s, size_t n, const char *format, va_list ap)
{
  char *buf = 0;
  int result = FUNC3 (&buf, format, ap);

  if (!buf)
    return -1;
  if (result < 0)
    {
      FUNC0 (buf);
      return -1;
    }

  result = FUNC2 (buf);
  if (n > 0)
    {
      if ((long) n > result)
	FUNC1 (s, buf, result+1);
      else
        {
	  FUNC1 (s, buf, n-1);
	  s[n - 1] = 0;
	}
    }
  FUNC0 (buf);
  return result;
}