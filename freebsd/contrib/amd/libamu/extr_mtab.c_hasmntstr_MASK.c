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
typedef  int /*<<< orphan*/  mntent_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*) ; 

char *
FUNC6(mntent_t *mnt, char *opt)
{
  char *str = FUNC0(mnt, opt);

  if (str) { /* The option was there */

    char *eq = FUNC1(mnt, opt);

    if (eq) { /* and had an = after it */

      char *endptr = FUNC2(eq, ',');

      /* if saw no comma, return xstrdup'd string */
      if (!endptr)
	return FUNC5(eq);
      else {
	/* else we need to copy only the chars needed */
	int len = endptr - eq;
	char *buf = FUNC4(len + 1);
	FUNC3(buf, eq, len);
	buf[len] = '\0';
	return buf;
      }
    }
  }
  return NULL;
}