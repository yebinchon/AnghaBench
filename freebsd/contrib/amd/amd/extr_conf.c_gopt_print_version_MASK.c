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
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC5(const char *val)
{
  if (FUNC0(val, "yes")) {
    char *vers = FUNC4();
    FUNC3(vers, stderr);
    FUNC1(vers);
    return 0;
  } else if (FUNC0(val, "no")) {
    return 0;
  }

  FUNC2(stderr, "conf: unknown value to print_version \"%s\"\n", val);
  return 1;			/* unknown value */
}