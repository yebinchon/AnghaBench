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
struct regexp_list {char* regexps; size_t len; int multiple_regexps; size_t size; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char*,size_t) ; 

__attribute__((used)) static void
FUNC5 (struct regexp_list *reglist, char const *pattern)
{
  size_t patlen = FUNC3 (pattern);
  char const *m = FUNC2 (pattern, patlen, reglist->buf);

  if (m != 0)
    FUNC0 (0, 0, "%s: %s", pattern, m);
  else
    {
      char *regexps = reglist->regexps;
      size_t len = reglist->len;
      bool multiple_regexps = reglist->multiple_regexps = regexps != 0;
      size_t newlen = reglist->len = len + 2 * multiple_regexps + patlen;
      size_t size = reglist->size;

      if (size <= newlen)
	{
	  if (!size)
	    size = 1;

	  do size *= 2;
	  while (size <= newlen);

	  reglist->size = size;
	  reglist->regexps = regexps = FUNC4 (regexps, size);
	}
      if (multiple_regexps)
	{
	  regexps[len++] = '\\';
	  regexps[len++] = '|';
	}
      FUNC1 (regexps + len, pattern, patlen + 1);
    }
}