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
struct strlist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct strlist*,char const*) ; 
 int FUNC1 (struct strlist*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct strlist *self, const char *s)
{
	if (FUNC2(s, "file://", 7) == 0)
		return FUNC1(self, s + 7);

	return FUNC0(self, s);
}