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
struct deps {scalar_t__ ntargets; } ;

/* Variables and functions */
 char const* TARGET_OBJECT_SUFFIX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct deps*,char*,int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 

void
FUNC6 (struct deps *d, const char *tgt)
{
  /* Only if we have no targets.  */
  if (d->ntargets)
    return;

  if (tgt[0] == '\0')
    FUNC1 (d, "-", 1);
  else
    {
#ifndef TARGET_OBJECT_SUFFIX
# define TARGET_OBJECT_SUFFIX ".o"
#endif
      const char *start = FUNC2 (tgt);
      char *o = (char *) FUNC0 (FUNC4 (start)
                                 + FUNC4 (TARGET_OBJECT_SUFFIX) + 1);
      char *suffix;

      FUNC3 (o, start);

      suffix = FUNC5 (o, '.');
      if (!suffix)
        suffix = o + FUNC4 (o);
      FUNC3 (suffix, TARGET_OBJECT_SUFFIX);

      FUNC1 (d, o, 1);
    }
}