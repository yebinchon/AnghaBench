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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (size_t) ; 

__attribute__((used)) static char *
FUNC2 (const char *s, size_t n)
{
  char *ret_val = FUNC1 (n + 1);

  FUNC0 (ret_val, s, n);
  ret_val[n] = '\0';
  return ret_val;
}