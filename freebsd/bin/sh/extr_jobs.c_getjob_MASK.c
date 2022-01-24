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
struct job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct job* FUNC1 (char const*) ; 

__attribute__((used)) static struct job *
FUNC2(const char *name)
{
	struct job *jp;

	jp = FUNC1(name);
	if (jp == NULL)
		FUNC0("No such job: %s", name);
	return (jp);
}