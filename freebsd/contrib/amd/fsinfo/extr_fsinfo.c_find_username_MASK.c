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
struct passwd {char* pw_name; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(void)
{
  const char *u = FUNC1();

  if (!u) {
    struct passwd *pw = FUNC2(FUNC3());
    if (pw)
      u = pw->pw_name;
  }

  if (!u)
    u = FUNC0("USER");
  if (!u)
    u = FUNC0("LOGNAME");
  if (!u)
    u = "root";

  return FUNC4(u);
}