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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ do_demangle ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC3 (const char *format, const char *name, bfd *abfd)
{
  if (do_demangle && *name)
    {
      char *res = FUNC0 (abfd, name, DMGL_ANSI | DMGL_PARAMS);

      if (res != NULL)
	{
	  FUNC2 (format, res);
	  FUNC1 (res);
	  return;
	}
    }

  FUNC2 (format, name);
}