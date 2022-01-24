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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NOMATCH ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC5 (const char *v1, const char *v2)
{
  int rresult;
  regex_t r;

  if (FUNC2 (&r, "^([1-9][0-9]*|0)(\\.([1-9][0-9]*|0))*$",
	       REG_EXTENDED | REG_NOSUB) != 0)
    FUNC0 ();
  rresult = FUNC3 (&r, v1, 0, NULL, 0);
  if (rresult == REG_NOMATCH)
    FUNC1 ("invalid version number `%s'", v1);
  else if (rresult != 0)
    FUNC0 ();
  rresult = FUNC3 (&r, v2, 0, NULL, 0);
  if (rresult == REG_NOMATCH)
    FUNC1 ("invalid version number `%s'", v2);
  else if (rresult != 0)
    FUNC0 ();

  return FUNC4 (v1, v2);
}