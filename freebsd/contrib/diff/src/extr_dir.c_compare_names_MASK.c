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
 char* FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,char const*,char const*) ; 
 int /*<<< orphan*/  failed_locale_specific_sorting ; 
 int FUNC2 (char const*,char const*) ; 
 scalar_t__ ignore_file_name_case ; 
 scalar_t__ locale_specific_sorting ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,char const*) ; 
 int FUNC5 (char const*,char const*) ; 
 int FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC7 (char const *name1, char const *name2)
{
  if (locale_specific_sorting)
    {
      int r;
      errno = 0;
      if (ignore_file_name_case)
	r = FUNC5 (name1, name2);
      else
	r = FUNC6 (name1, name2);
      if (errno)
	{
	  FUNC1 (0, errno, FUNC0("cannot compare file names `%s' and `%s'"),
		 name1, name2);
	  FUNC3 (failed_locale_specific_sorting, 1);
	}
      return r;
    }

  return (ignore_file_name_case
	  ? FUNC4 (name1, name2)
	  : FUNC2 (name1, name2));
}