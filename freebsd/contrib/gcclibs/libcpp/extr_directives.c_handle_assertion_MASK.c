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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char const*,size_t) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile, const char *str, int type)
{
  size_t count = FUNC4 (str);
  const char *p = FUNC3 (str, '=');

  /* Copy the entire option so we can modify it.  Change the first
     "=" in the string to a '(', and tack a ')' on the end.  */
  char *buf = (char *) FUNC0 (count + 2);

  FUNC1 (buf, str, count);
  if (p)
    {
      buf[p - str] = '(';
      buf[count++] = ')';
    }
  buf[count] = '\n';
  str = buf;

  FUNC2 (pfile, type, str, count);
}