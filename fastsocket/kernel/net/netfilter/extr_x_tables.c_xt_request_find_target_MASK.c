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
typedef  size_t u8 ;
struct xt_target {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xt_target*) ; 
 struct xt_target* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,char const*,size_t) ; 
 int /*<<< orphan*/ * xt_prefix ; 

struct xt_target *FUNC3(u8 af, const char *name, u8 revision)
{
	struct xt_target *target;

	target = FUNC1(FUNC2(af, name, revision),
					 "%st_%s", xt_prefix[af], name);
	if (FUNC0(target) || !target)
		return NULL;
	return target;
}