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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 unsigned long FUNC3 (char*,char**,int) ; 

__attribute__((used)) static bool
FUNC4 (const char *name, unsigned long *pvalue)
{
  char *env, *end;
  unsigned long value;

  env = FUNC0 (name);
  if (env == NULL)
    return false;

  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (*env == '\0')
    goto invalid;

  errno = 0;
  value = FUNC3 (env, &end, 10);
  if (errno || (long) value <= 0)
    goto invalid;

  while (FUNC2 ((unsigned char) *end))
    ++end;
  if (*end != '\0')
    goto invalid;

  *pvalue = value;
  return true;

 invalid:
  FUNC1 ("Invalid value for environment variable %s", name);
  return false;
}