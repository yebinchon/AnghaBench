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
struct environ {char** vector; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 

char *
FUNC2 (const struct environ *e, const char *var)
{
  int len = FUNC0 (var);
  char **vector = e->vector;
  char *s;

  for (; (s = *vector) != NULL; vector++)
    if (FUNC1 (s, var, len) == 0 && s[len] == '=')
      return &s[len + 1];

  return 0;
}