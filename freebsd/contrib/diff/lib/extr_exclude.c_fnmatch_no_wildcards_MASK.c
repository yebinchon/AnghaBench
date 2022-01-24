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
 int FNM_CASEFOLD ; 
 int FNM_LEADING_DIR ; 
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*,size_t) ; 
 int FUNC4 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC5 (char const *pattern, char const *f, int options)
{
  if (! (options & FNM_LEADING_DIR))
    return ((options & FNM_CASEFOLD)
	    ? FUNC0 (pattern, f)
	    : FUNC1 (pattern, f));
  else
    {
      size_t patlen = FUNC2 (pattern);
      int r = ((options & FNM_CASEFOLD)
		? FUNC3 (pattern, f, patlen)
		: FUNC4 (pattern, f, patlen));
      if (! r)
	{
	  r = f[patlen];
	  if (r == '/')
	    r = 0;
	}
      return r;
    }
}