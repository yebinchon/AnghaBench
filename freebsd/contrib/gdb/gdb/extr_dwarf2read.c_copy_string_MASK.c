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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static char *
FUNC2 (const char *buf, int len)
{
  char *s = FUNC1 (len + 1);
  FUNC0 (s, buf, len);
  s[len] = '\0';

  return s;
}