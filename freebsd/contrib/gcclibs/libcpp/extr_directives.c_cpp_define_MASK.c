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
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  T_DEFINE ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 

void
FUNC5 (cpp_reader *pfile, const char *str)
{
  char *buf, *p;
  size_t count;

  /* Copy the entire option so we can modify it.
     Change the first "=" in the string to a space.  If there is none,
     tack " 1" on the end.  */

  count = FUNC4 (str);
  buf = (char *) FUNC0 (count + 3);
  FUNC1 (buf, str, count);

  p = FUNC3 (str, '=');
  if (p)
    buf[p - str] = ' ';
  else
    {
      buf[count++] = ' ';
      buf[count++] = '1';
    }
  buf[count] = '\n';

  FUNC2 (pfile, T_DEFINE, buf, count);
}