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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC4 (const char *name, bool *value)
{
  const char *env;

  env = FUNC0 (name);
  if (env == NULL)
    return;

  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (FUNC3 (env, "true", 4) == 0)
    {
      *value = true;
      env += 4;
    }
  else if (FUNC3 (env, "false", 5) == 0)
    {
      *value = false;
      env += 5;
    }
  else
    env = "X";
  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (*env != '\0')
    FUNC1 ("Invalid value for environment variable %s", name);
}