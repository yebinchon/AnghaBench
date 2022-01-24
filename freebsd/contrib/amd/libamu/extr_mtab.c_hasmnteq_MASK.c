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
 int FUNC1 (char*) ; 

char *
FUNC2(mntent_t *mnt, char *opt)
{
  if (mnt && opt) {		/* disallow null input pointers */
    if ( *opt ) {		/* disallow the null string as an opt */
      char *str = FUNC0(mnt, opt);
      if ( str ) {		/* option was there */
	char *eq = str + FUNC1(opt); /* Look at char just after option */
	if (*eq == '=')		/* Is it '=' ? */
	  return ++eq;		/* If so, return pointer to remaining str */
      }
    }
  }
  return NULL;
}