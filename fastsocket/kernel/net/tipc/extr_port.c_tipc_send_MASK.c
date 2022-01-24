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
struct TYPE_2__ {int congested; int /*<<< orphan*/  connected; } ;
struct port {TYPE_1__ publ; int /*<<< orphan*/  sent; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELINKCONG ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct iovec const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 scalar_t__ FUNC3 (struct port*) ; 
 scalar_t__ FUNC4 (struct port*) ; 
 int FUNC5 (struct port*,struct iovec const*,unsigned int,scalar_t__) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC6 (struct port*) ; 
 struct port* FUNC7 (scalar_t__) ; 
 int FUNC8 (struct port*,unsigned int,struct iovec const*) ; 

int FUNC9(u32 ref, unsigned int num_sect, struct iovec const *msg_sect)
{
	struct port *p_ptr;
	u32 destnode;
	int res;

	p_ptr = FUNC7(ref);
	if (!p_ptr || !p_ptr->publ.connected)
		return -EINVAL;

	p_ptr->publ.congested = 1;
	if (!FUNC6(p_ptr)) {
		destnode = FUNC3(p_ptr);
		if (FUNC0(destnode != tipc_own_addr))
			res = FUNC5(p_ptr, msg_sect, num_sect,
							   destnode);
		else
			res = FUNC8(p_ptr, num_sect, msg_sect);

		if (FUNC0(res != -ELINKCONG)) {
			FUNC2(p_ptr);
			p_ptr->publ.congested = 0;
			p_ptr->sent++;
			return res;
		}
	}
	if (FUNC4(p_ptr)) {
		p_ptr->publ.congested = 0;
		/* Just calculate msg length and return */
		return FUNC1(msg_sect, num_sect);
	}
	return -ELINKCONG;
}