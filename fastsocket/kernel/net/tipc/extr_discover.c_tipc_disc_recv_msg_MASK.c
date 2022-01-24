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
typedef  scalar_t__ u32 ;
struct tipc_node {int /*<<< orphan*/  lock; struct link** links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {scalar_t__ state; int /*<<< orphan*/  name; int /*<<< orphan*/  started; struct tipc_media_addr media_addr; } ;
struct TYPE_4__ {struct tipc_media_addr addr; } ;
struct bearer {size_t identity; TYPE_2__ publ; TYPE_1__* media; } ;
typedef  int /*<<< orphan*/  media_addr ;
struct TYPE_3__ {int /*<<< orphan*/  (* send_msg ) (struct sk_buff*,TYPE_2__*,struct tipc_media_addr*) ;} ;

/* Variables and functions */
 scalar_t__ DSC_RESP_MSG ; 
 scalar_t__ WORKING_WORKING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bearer*,scalar_t__,struct tipc_media_addr*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct tipc_media_addr*,struct tipc_media_addr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_media_addr*,struct tipc_media_addr*,int) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,struct tipc_media_addr*) ; 
 scalar_t__ FUNC13 (struct tipc_msg*) ; 
 scalar_t__ FUNC14 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,TYPE_2__*,struct tipc_media_addr*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 struct sk_buff* FUNC20 (scalar_t__,int,scalar_t__,struct bearer*) ; 
 struct link* FUNC21 (struct bearer*,scalar_t__,struct tipc_media_addr*) ; 
 scalar_t__ FUNC22 (struct link*) ; 
 int /*<<< orphan*/  FUNC23 (struct link*) ; 
 scalar_t__ tipc_net_id ; 
 struct tipc_node* FUNC24 (scalar_t__) ; 
 struct tipc_node* FUNC25 (scalar_t__) ; 
 scalar_t__ tipc_own_addr ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 

void FUNC27(struct sk_buff *buf, struct bearer *b_ptr)
{
	struct link *link;
	struct tipc_media_addr media_addr;
	struct tipc_msg *msg = FUNC1(buf);
	u32 dest = FUNC11(msg);
	u32 orig = FUNC13(msg);
	u32 net_id = FUNC9(msg);
	u32 type = FUNC14(msg);

	FUNC12(msg,&media_addr);
	FUNC10(msg, "RECV:");
	FUNC0(buf);

	if (net_id != tipc_net_id)
		return;
	if (!FUNC18(dest))
		return;
	if (!FUNC19(orig))
		return;
	if (orig == tipc_own_addr) {
		if (FUNC7(&media_addr, &b_ptr->publ.addr, sizeof(media_addr)))
			FUNC3(b_ptr, tipc_own_addr, &media_addr);
		return;
	}
	if (!FUNC5(dest, tipc_own_addr))
		return;
	if (FUNC6(tipc_own_addr) && FUNC6(orig))
		return;
	if (FUNC6(orig) && !FUNC4(orig))
		return;
	if (FUNC4(orig)) {
		/* Always accept link here */
		struct sk_buff *rbuf;
		struct tipc_media_addr *addr;
		struct tipc_node *n_ptr = FUNC25(orig);
		int link_fully_up;

		FUNC2(" in own cluster\n");
		if (n_ptr == NULL) {
			n_ptr = FUNC24(orig);
			if (!n_ptr)
				return;
		}
		FUNC15(&n_ptr->lock);
		link = n_ptr->links[b_ptr->identity];
		if (!link) {
			FUNC2("creating link\n");
			link = FUNC21(b_ptr, orig, &media_addr);
			if (!link) {
				FUNC16(&n_ptr->lock);
				return;
			}
		}
		addr = &link->media_addr;
		if (FUNC7(addr, &media_addr, sizeof(*addr))) {
			if (FUNC22(link) || (!link->started)) {
				FUNC3(b_ptr, orig, &media_addr);
				FUNC16(&n_ptr->lock);
				return;
			}
			FUNC26("Resetting link <%s>, peer interface address changed\n",
			     link->name);
			FUNC8(addr, &media_addr, sizeof(*addr));
			FUNC23(link);
		}
		link_fully_up = (link->state == WORKING_WORKING);
		FUNC16(&n_ptr->lock);
		if ((type == DSC_RESP_MSG) || link_fully_up)
			return;
		rbuf = FUNC20(DSC_RESP_MSG, 1, orig, b_ptr);
		if (rbuf != NULL) {
			FUNC10(FUNC1(rbuf),"SEND:");
			b_ptr->media->send_msg(rbuf, &b_ptr->publ, &media_addr);
			FUNC0(rbuf);
		}
	}
}