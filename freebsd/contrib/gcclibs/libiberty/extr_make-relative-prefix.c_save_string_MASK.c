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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static char *
FUNC2 (const char *s, int len)
{
  char *result = (char *) FUNC0 (len + 1);

  FUNC1 (result, s, len);
  result[len] = 0;
  return result;
}