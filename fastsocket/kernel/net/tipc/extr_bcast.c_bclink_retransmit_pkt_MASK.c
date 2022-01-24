#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_3__ {struct sk_buff* first_out; } ;

/* Variables and functions */
 TYPE_1__* bcl ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u32 after, u32 to)
{
	struct sk_buff *buf;

	buf = bcl->first_out;
	while (buf && FUNC1(FUNC0(buf), after)) {
		buf = buf->next;
	}
	FUNC3(bcl, buf, FUNC2(to - after));
}