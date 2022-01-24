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
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int congested; struct tipc_msg phdr; int /*<<< orphan*/  connected; } ;
struct port {TYPE_1__ publ; int /*<<< orphan*/  sent; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ELINKCONG ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 scalar_t__ FUNC5 (struct port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC9 (struct port*) ; 
 struct port* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,scalar_t__) ; 

int FUNC13(u32 ref, struct sk_buff *buf, unsigned int dsz)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	u32 destnode;
	u32 hsz;
	u32 sz;
	u32 res;

	p_ptr = FUNC10(ref);
	if (!p_ptr || !p_ptr->publ.connected)
		return -EINVAL;

	msg = &p_ptr->publ.phdr;
	hsz = FUNC2(msg);
	sz = hsz + dsz;
	FUNC3(msg, sz);
	if (FUNC7(buf, hsz))
		return -ENOMEM;

	FUNC8(buf, hsz);
	FUNC6(buf, msg, hsz);
	destnode = FUNC1(msg);
	p_ptr->publ.congested = 1;
	if (!FUNC9(p_ptr)) {
		if (FUNC0(destnode != tipc_own_addr))
			res = FUNC12(buf, destnode);
		else {
			FUNC11(buf);
			res = sz;
		}
		if (FUNC0(res != -ELINKCONG)) {
			FUNC4(p_ptr);
			p_ptr->sent++;
			p_ptr->publ.congested = 0;
			return res;
		}
	}
	if (FUNC5(p_ptr)) {
		p_ptr->publ.congested = 0;
		return dsz;
	}
	return -ELINKCONG;
}