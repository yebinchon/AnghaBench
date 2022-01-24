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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3 (const char *field_name, const char *target)
{
  int len = FUNC2 (target);
  return
    FUNC1 (field_name, target, len)
    && (field_name[len] == '\0'
	|| (FUNC1 (field_name + len, "___", 3)
	    && !FUNC0 (field_name + FUNC2 (field_name) - 6, "___XVN")));
}