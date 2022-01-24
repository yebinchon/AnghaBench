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
 int /*<<< orphan*/  FUNC0 (char**) ; 

__attribute__((used)) static char *
FUNC1(char **p)
{
  char *cp = *p;
  char *dp = cp;
  char *s = cp;

top:
  while (*cp && *cp != ';') {
    if (*cp == '"') {
      /*
       * Skip past string
       */
      for (cp++; *cp && *cp != '"'; cp++)
	if (*cp == '\\')
	  *dp++ = FUNC0(&cp);
	else
	  *dp++ = *cp;
      if (*cp)
	cp++;
    } else {
      *dp++ = *cp++;
    }
  }

  /*
   * Skip past any remaining ';'s
   */
  while (*cp == ';')
    cp++;

  /*
   * If we have a zero length string
   * and there are more fields, then
   * parse the next one.  This allows
   * sequences of empty fields.
   */
  if (*cp && dp == s)
    goto top;

  *dp = '\0';

  *p = cp;
  return s;
}