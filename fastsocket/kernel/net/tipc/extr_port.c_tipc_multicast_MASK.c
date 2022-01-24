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
struct tipc_name_seq {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct port_list {scalar_t__ count; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {struct tipc_msg phdr; } ;
struct port {int /*<<< orphan*/  user_port; TYPE_1__ publ; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MAX_MSG_SIZE ; 
 int /*<<< orphan*/  MCAST_H_SIZE ; 
 int /*<<< orphan*/  TIPC_MCAST_MSG ; 
 int /*<<< orphan*/  TIPC_NODE_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct tipc_msg*,struct iovec const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct port_list*) ; 
 struct port* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct port_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct port_list*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(u32 ref, struct tipc_name_seq const *seq, u32 domain,
		   u32 num_sect, struct iovec const *msg_sect)
{
	struct tipc_msg *hdr;
	struct sk_buff *buf;
	struct sk_buff *ibuf = NULL;
	struct port_list dports = {0, NULL, };
	struct port *oport = FUNC10(ref);
	int ext_targets;
	int res;

	if (FUNC13(!oport))
		return -EINVAL;

	/* Create multicast message */

	hdr = &oport->publ.phdr;
	FUNC6(hdr, TIPC_MCAST_MSG);
	FUNC4(hdr, seq->type);
	FUNC3(hdr, seq->lower);
	FUNC5(hdr, seq->upper);
	FUNC2(hdr, MCAST_H_SIZE);
	res = FUNC1(hdr, msg_sect, num_sect, MAX_MSG_SIZE,
			!oport->user_port, &buf);
	if (FUNC13(!buf))
		return res;

	/* Figure out where to send multicast message */

	ext_targets = FUNC9(seq->type, seq->lower, seq->upper,
						TIPC_NODE_SCOPE, &dports);

	/* Send message to destinations (duplicate it only if necessary) */

	if (ext_targets) {
		if (dports.count != 0) {
			ibuf = FUNC7(buf, GFP_ATOMIC);
			if (ibuf == NULL) {
				FUNC11(&dports);
				FUNC0(buf);
				return -ENOMEM;
			}
		}
		res = FUNC8(buf);
		if ((res < 0) && (dports.count != 0)) {
			FUNC0(ibuf);
		}
	} else {
		ibuf = buf;
	}

	if (res >= 0) {
		if (ibuf)
			FUNC12(ibuf, &dports);
	} else {
		FUNC11(&dports);
	}
	return res;
}