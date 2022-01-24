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
 char const* PXDB_SVR4 ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7 (const char *file_name)
{
  char *p;
  int status;
  int retval;

  if (FUNC0 (PXDB_SVR4))
    {
      p = FUNC6 (FUNC3 (PXDB_SVR4) + FUNC3 (file_name) + 2);
      FUNC2 (p, PXDB_SVR4);
      FUNC1 (p, " ");
      FUNC1 (p, file_name);

      FUNC5 ("File not processed by pxdb--about to process now.\n");
      status = FUNC4 (p);

      retval = (status == 0);
    }
  else
    {
      FUNC5 ("pxdb not found at standard location: /opt/langtools/bin\ngdb will not be able to debug %s.\nPlease install pxdb at the above location and then restart gdb.\nYou can also run pxdb on %s with the command\n\"pxdb %s\" and then restart gdb.", file_name, file_name, file_name);

      retval = 0;
    }
  return retval;
}