#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* offset; void* addr; } ;
struct ins_operands {char const* raw; TYPE_1__ target; } ;

/* Variables and functions */
 void* UINT64_MAX ; 
 char* FUNC0 (char const*,char) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ins_operands *ops)
{
	const char *s = FUNC0(ops->raw, '+');

	ops->target.addr = FUNC1(ops->raw, NULL, 16);

	if (s++ != NULL)
		ops->target.offset = FUNC1(s, NULL, 16);
	else
		ops->target.offset = UINT64_MAX;

	return 0;
}