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
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1 (const char *first, const char *second)
{
  int first_p, second_p;

  /* If both are shorts, return 1; if neither is a short, keep checking.  */
  first_p = (FUNC0 (first, "short") != NULL);
  second_p = (FUNC0 (second, "short") != NULL);
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;

  /* Likewise for long.  */
  first_p = (FUNC0 (first, "long") != NULL);
  second_p = (FUNC0 (second, "long") != NULL);
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;

  /* Likewise for char.  */
  first_p = (FUNC0 (first, "char") != NULL);
  second_p = (FUNC0 (second, "char") != NULL);
  if (first_p && second_p)
    return 1;
  if (first_p || second_p)
    return 0;

  /* They must both be ints.  */
  return 1;
}