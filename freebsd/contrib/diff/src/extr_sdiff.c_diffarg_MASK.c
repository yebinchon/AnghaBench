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
 int PTRDIFF_MAX ; 
 char const** diffargv ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char** FUNC1 (char const**,size_t) ; 

__attribute__((used)) static void
FUNC2 (char const *a)
{
  static size_t diffargs, diffarglim;

  if (diffargs == diffarglim)
    {
      if (! diffarglim)
	diffarglim = 16;
      else if (PTRDIFF_MAX / (2 * sizeof *diffargv) <= diffarglim)
	FUNC0 ();
      else
	diffarglim *= 2;
      diffargv = FUNC1 (diffargv, diffarglim * sizeof *diffargv);
    }
  diffargv[diffargs++] = a;
}