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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_portid {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int /*<<< orphan*/  sent; TYPE_1__ publ; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_MSG_H_SIZE ; 
 int EINVAL ; 
 int ELINKCONG ; 
 unsigned int TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_DIRECT_MSG ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct iovec const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct port*) ; 
 int FUNC10 (struct port*,struct iovec const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 struct port* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct port*,unsigned int,struct iovec const*) ; 

int FUNC13(u32 ref,
		      struct tipc_portid const *dest,
		      unsigned int num_sect,
		      struct iovec const *msg_sect,
		      struct tipc_portid const *orig,
		      unsigned int importance)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	int res;

	p_ptr = FUNC11(ref);
	if (!p_ptr || p_ptr->publ.connected)
		return -EINVAL;

	msg = &p_ptr->publ.phdr;
	FUNC8(msg, TIPC_DIRECT_MSG);
	FUNC6(msg, orig->node);
	FUNC7(msg, orig->ref);
	FUNC2(msg, dest->node);
	FUNC3(msg, dest->ref);
	FUNC4(msg, DIR_MSG_H_SIZE);
	if (importance <= TIPC_CRITICAL_IMPORTANCE)
		FUNC5(msg, importance);
	p_ptr->sent++;
	if (dest->node == tipc_own_addr)
		return FUNC12(p_ptr, num_sect, msg_sect);
	res = FUNC10(p_ptr, msg_sect, num_sect, dest->node);
	if (FUNC0(res != -ELINKCONG))
		return res;
	if (FUNC9(p_ptr)) {
		/* Just calculate msg length and return */
		return FUNC1(msg_sect, num_sect);
	}
	return -ELINKCONG;
}