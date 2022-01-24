#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {TYPE_1__* b_ptr; TYPE_2__* owner; } ;
struct TYPE_4__ {struct link** active_links; } ;
struct TYPE_3__ {int /*<<< orphan*/  net_plane; } ;

/* Variables and functions */
 int INT_H_SIZE ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct link*) ; 
 int /*<<< orphan*/  FUNC9 (struct link*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(struct link *l_ptr,
		      struct tipc_msg *tunnel_hdr,
		      struct tipc_msg  *msg,
		      u32 selector)
{
	struct link *tunnel;
	struct sk_buff *buf;
	u32 length = FUNC5(msg);

	tunnel = l_ptr->owner->active_links[selector & 1];
	if (!FUNC8(tunnel)) {
		FUNC10("Link changeover error, "
		     "tunnel link no longer available\n");
		return;
	}
	FUNC4(tunnel_hdr, length + INT_H_SIZE);
	buf = FUNC0(length + INT_H_SIZE);
	if (!buf) {
		FUNC10("Link changeover error, "
		     "unable to send tunnel msg\n");
		return;
	}
	FUNC6(buf, tunnel_hdr, INT_H_SIZE);
	FUNC7(buf, INT_H_SIZE, msg, length);
	FUNC2("%c->%c:", l_ptr->b_ptr->net_plane, tunnel->b_ptr->net_plane);
	FUNC3(FUNC1(buf), ">SEND>");
	FUNC9(tunnel, buf);
}