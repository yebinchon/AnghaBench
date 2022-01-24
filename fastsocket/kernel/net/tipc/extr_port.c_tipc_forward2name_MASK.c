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
typedef  scalar_t__ u32 ;
struct tipc_portid {int /*<<< orphan*/  ref; int /*<<< orphan*/  node; } ;
struct tipc_name {int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
struct tipc_msg {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int /*<<< orphan*/  sent; TYPE_1__ publ; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELINKCONG ; 
 int /*<<< orphan*/  LONG_H_SIZE ; 
 unsigned int TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_ERR_NO_NAME ; 
 int /*<<< orphan*/  TIPC_NAMED_MSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct iovec const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct port*) ; 
 int FUNC14 (struct port*,struct iovec const*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ tipc_own_addr ; 
 struct port* FUNC16 (scalar_t__) ; 
 int FUNC17 (struct port*,scalar_t__,struct iovec const*) ; 
 int FUNC18 (struct port*,struct tipc_msg*,struct iovec const*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC19(u32 ref,
		      struct tipc_name const *name,
		      u32 domain,
		      u32 num_sect,
		      struct iovec const *msg_sect,
		      struct tipc_portid const *orig,
		      unsigned int importance)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	u32 destnode = domain;
	u32 destport = 0;
	int res;

	p_ptr = FUNC16(ref);
	if (!p_ptr || p_ptr->publ.connected)
		return -EINVAL;

	msg = &p_ptr->publ.phdr;
	FUNC12(msg, TIPC_NAMED_MSG);
	FUNC10(msg, orig->node);
	FUNC11(msg, orig->ref);
	FUNC5(msg, LONG_H_SIZE);
	FUNC9(msg, name->type);
	FUNC8(msg, name->instance);
	FUNC7(msg, FUNC0(domain));
	if (importance <= TIPC_CRITICAL_IMPORTANCE)
		FUNC6(msg,importance);
	destport = FUNC15(name->type, name->instance, &destnode);
	FUNC3(msg, destnode);
	FUNC4(msg, destport);

	if (FUNC1(destport || destnode)) {
		p_ptr->sent++;
		if (FUNC1(destnode == tipc_own_addr))
			return FUNC17(p_ptr, num_sect, msg_sect);
		res = FUNC14(p_ptr, msg_sect, num_sect,
						   destnode);
		if (FUNC1(res != -ELINKCONG))
			return res;
		if (FUNC13(p_ptr)) {
			/* Just calculate msg length and return */
			return FUNC2(msg_sect, num_sect);
		}
		return -ELINKCONG;
	}
	return FUNC18(p_ptr, msg, msg_sect, num_sect,
					 TIPC_ERR_NO_NAME);
}