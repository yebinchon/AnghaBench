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
struct kinfo_proc {int dummy; } ;

/* Variables and functions */
 char* delim ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC1 (struct kinfo_proc const*) ; 

__attribute__((used)) static int
FUNC2(const struct kinfo_proc *kp)
{
	static bool first = true;

	if (!quiet && !first)
		FUNC0("%s", delim);
	FUNC1(kp);
	first = false;
	return (1);
}