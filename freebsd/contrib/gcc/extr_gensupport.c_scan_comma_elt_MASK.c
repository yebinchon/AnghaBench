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
 scalar_t__ FUNC0 (char const) ; 

const char *
FUNC1 (const char **pstr)
{
  const char *start;
  const char *p = *pstr;

  if (*p == ',')
    p++;
  while (FUNC0(*p))
    p++;

  if (*p == '\0')
    return NULL;

  start = p;

  while (*p != ',' && *p != '\0')
    p++;

  *pstr = p;
  return start;
}