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
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (scalar_t__) ; 

char *
FUNC3 (char const *s1, char const *s2, char const *s3)
{
  char *new = FUNC2 (FUNC1 (s1) + FUNC1 (s2) + FUNC1 (s3) + 1);
  FUNC0 (new, "%s%s%s", s1, s2, s3);
  return new;
}