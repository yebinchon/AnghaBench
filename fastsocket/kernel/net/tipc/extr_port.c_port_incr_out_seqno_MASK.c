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
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; } ;
struct port {TYPE_1__ publ; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 

__attribute__((used)) static void FUNC4(struct port *p_ptr)
{
	struct tipc_msg *m = &p_ptr->publ.phdr;

	if (FUNC0(!FUNC1(m)))
		return;
	FUNC2(m, (FUNC3(m) + 1));
}