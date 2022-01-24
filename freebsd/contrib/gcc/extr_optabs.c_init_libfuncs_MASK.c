#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* optab ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {int /*<<< orphan*/  libfunc; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6 (optab optable, int first_mode, int last_mode,
	       const char *opname, int suffix)
{
  int mode;
  unsigned opname_len = FUNC5 (opname);

  for (mode = first_mode; (int) mode <= (int) last_mode;
       mode = (enum machine_mode) ((int) mode + 1))
    {
      const char *mname = FUNC0 (mode);
      unsigned mname_len = FUNC5 (mname);
      char *libfunc_name = FUNC2 (2 + opname_len + mname_len + 1 + 1);
      char *p;
      const char *q;

      p = libfunc_name;
      *p++ = '_';
      *p++ = '_';
      for (q = opname; *q; )
	*p++ = *q++;
      for (q = mname; *q; q++)
	*p++ = FUNC1 (*q);
      *p++ = suffix;
      *p = '\0';

      optable->handlers[(int) mode].libfunc
	= FUNC4 (FUNC3 (libfunc_name, p - libfunc_name));
    }
}