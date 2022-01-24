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
struct sk_buff {int dummy; } ;
struct port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_ERR_NO_NODE ; 
 struct sk_buff* FUNC0 (struct port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct port* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct port*) ; 

__attribute__((used)) static void FUNC4(unsigned long ref)
{
	struct port *p_ptr = FUNC2(ref);
	struct sk_buff* buf = NULL;

	if (!p_ptr)
		return;
	buf = FUNC0(p_ptr, TIPC_ERR_NO_NODE);
	FUNC3(p_ptr);
	FUNC1(buf);
}