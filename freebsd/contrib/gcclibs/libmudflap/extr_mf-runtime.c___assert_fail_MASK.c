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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 

void
FUNC6 (const char *msg, const char *file, unsigned line, const char *func)
{
#define write2(string) write (2, (string), strlen ((string)));
  write2("mf");
#ifdef LIBMUDFLAPTH
  write2("(");
  write_itoa (2, (unsigned) pthread_self ());
  write2(")");
#endif
  write2(": assertion failure: `");
  FUNC3 (2, msg, FUNC2 (msg));
  write2("' in ");
  FUNC3 (2, func, FUNC2 (func));
  write2(" at ");
  FUNC3 (2, file, FUNC2 (file));
  write2(":");
  FUNC5 (2, line);
  write2("\n");
#undef write2
  FUNC0 ();
}