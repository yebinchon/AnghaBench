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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *arg, const char *exe_name,
				int *src_alignment, int *dst_alignment)
{
  long int ret;
  char *endptr;

  errno = 0;
  ret = FUNC1(arg, &endptr, 0);

  if (errno)
    {
      FUNC2(exe_name);
    }

  *src_alignment = (int)ret;

  if (ret > 256 || ret < 1)
    {
      FUNC0("Alignment should be in the range [1, 256].\n");
      FUNC2(exe_name);
    }

  if (ret == 256)
    ret = 0;

  if (endptr && *endptr == ':')
    {
      errno = 0;
      ret = FUNC1(endptr + 1, NULL, 0);

      if (errno)
	{
	  FUNC2(exe_name);
	}

      if (ret > 256 || ret < 1)
	{
	  FUNC0("Alignment should be in the range [1, 256].\n");
	  FUNC2(exe_name);
	}

      if (ret == 256)
	ret = 0;
    }

  *dst_alignment = (int)ret;
}