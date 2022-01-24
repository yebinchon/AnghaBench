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
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct link {scalar_t__ exp_msg_count; int /*<<< orphan*/  reset_checkpoint; int /*<<< orphan*/  name; int /*<<< orphan*/  next_in_no; TYPE_2__* b_ptr; TYPE_1__* owner; } ;
struct TYPE_4__ {int /*<<< orphan*/  net_plane; } ;
struct TYPE_3__ {struct link** links; } ;

/* Variables and functions */
 scalar_t__ DUPLICATE_MSG ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 scalar_t__ START_CHANGEOVER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (struct link*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,char*) ; 
 struct tipc_msg* FUNC11 (struct tipc_msg*) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*) ; 
 scalar_t__ FUNC14 (struct tipc_msg*) ; 
 scalar_t__ FUNC15 (struct link*) ; 
 int /*<<< orphan*/  FUNC16 (struct link*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(struct link **l_ptr,
				    struct sk_buff **buf)
{
	struct sk_buff *tunnel_buf = *buf;
	struct link *dest_link;
	struct tipc_msg *msg;
	struct tipc_msg *tunnel_msg = FUNC2(tunnel_buf);
	u32 msg_typ = FUNC14(tunnel_msg);
	u32 msg_count = FUNC12(tunnel_msg);

	dest_link = (*l_ptr)->owner->links[FUNC9(tunnel_msg)];
	if (!dest_link) {
		FUNC10(tunnel_msg, "NOLINK/<REC<");
		goto exit;
	}
	if (dest_link == *l_ptr) {
		FUNC5("Unexpected changeover message on link <%s>\n",
		    (*l_ptr)->name);
		goto exit;
	}
	FUNC3("%c<-%c:", dest_link->b_ptr->net_plane,
	    (*l_ptr)->b_ptr->net_plane);
	*l_ptr = dest_link;
	msg = FUNC11(tunnel_msg);

	if (msg_typ == DUPLICATE_MSG) {
		if (FUNC7(FUNC13(msg), FUNC8(dest_link->next_in_no))) {
			FUNC10(tunnel_msg, "DROP/<REC<");
			goto exit;
		}
		*buf = FUNC1(tunnel_buf,INT_H_SIZE);
		if (*buf == NULL) {
			FUNC17("Link changeover error, duplicate msg dropped\n");
			goto exit;
		}
		FUNC10(tunnel_msg, "TNL<REC<");
		FUNC0(tunnel_buf);
		return 1;
	}

	/* First original message ?: */

	if (FUNC15(dest_link)) {
		FUNC10(tunnel_msg, "UP/FIRST/<REC<");
		FUNC6("Resetting link <%s>, changeover initiated by peer\n",
		     dest_link->name);
		FUNC16(dest_link);
		dest_link->exp_msg_count = msg_count;
		FUNC3("Expecting %u tunnelled messages\n", msg_count);
		if (!msg_count)
			goto exit;
	} else if (dest_link->exp_msg_count == START_CHANGEOVER) {
		FUNC10(tunnel_msg, "BLK/FIRST/<REC<");
		dest_link->exp_msg_count = msg_count;
		FUNC3("Expecting %u tunnelled messages\n", msg_count);
		if (!msg_count)
			goto exit;
	}

	/* Receive original message */

	if (dest_link->exp_msg_count == 0) {
		FUNC17("Link switchover error, "
		     "got too many tunnelled messages\n");
		FUNC10(tunnel_msg, "OVERDUE/DROP/<REC<");
		FUNC4(dest_link, "LINK:");
		goto exit;
	}
	dest_link->exp_msg_count--;
	if (FUNC7(FUNC13(msg), dest_link->reset_checkpoint)) {
		FUNC10(tunnel_msg, "DROP/DUPL/<REC<");
		goto exit;
	} else {
		*buf = FUNC1(tunnel_buf, INT_H_SIZE);
		if (*buf != NULL) {
			FUNC10(tunnel_msg, "TNL<REC<");
			FUNC0(tunnel_buf);
			return 1;
		} else {
			FUNC17("Link changeover error, original msg dropped\n");
		}
	}
exit:
	*buf = NULL;
	FUNC0(tunnel_buf);
	return 0;
}