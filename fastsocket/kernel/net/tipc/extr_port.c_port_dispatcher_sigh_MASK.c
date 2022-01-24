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
typedef  int u32 ;
typedef  int /*<<< orphan*/  (* tipc_named_msg_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_portid*,struct tipc_name_seq*) ;
typedef  int /*<<< orphan*/  (* tipc_named_msg_err_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tipc_name_seq*) ;
typedef  int /*<<< orphan*/  (* tipc_msg_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_portid*) ;
typedef  int /*<<< orphan*/  (* tipc_msg_err_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tipc_portid*) ;
typedef  int /*<<< orphan*/  (* tipc_conn_shutdown_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;
typedef  int /*<<< orphan*/  (* tipc_conn_msg_event ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct user_port {int /*<<< orphan*/  (* named_err_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tipc_name_seq*) ;int /*<<< orphan*/  (* err_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tipc_portid*) ;int /*<<< orphan*/  (* conn_err_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* named_msg_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_portid*,struct tipc_name_seq*) ;int /*<<< orphan*/  (* msg_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tipc_portid*) ;int /*<<< orphan*/  (* conn_msg_cb ) (void*,int,struct sk_buff**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* usr_handle; } ;
struct tipc_portid {int ref; int node; } ;
struct tipc_name_seq {void* lower; void* upper; void* type; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {int connected; int published; int /*<<< orphan*/  conn_unacked; } ;
struct port {TYPE_1__ publ; struct user_port* user_port; } ;

/* Variables and functions */
#define  TIPC_CONN_MSG 131 
#define  TIPC_DIRECT_MSG 130 
 int /*<<< orphan*/  TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  TIPC_FLOW_CONTROL_WIN ; 
#define  TIPC_MCAST_MSG 129 
#define  TIPC_NAMED_MSG 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 void* FUNC8 (struct tipc_msg*) ; 
 void* FUNC9 (struct tipc_msg*) ; 
 void* FUNC10 (struct tipc_msg*) ; 
 int FUNC11 (struct tipc_msg*) ; 
 int FUNC12 (struct tipc_msg*) ; 
 struct sk_buff* msg_queue_head ; 
 int FUNC13 (struct tipc_msg*) ; 
 int FUNC14 (struct port*) ; 
 int FUNC15 (struct port*) ; 
 int /*<<< orphan*/  queue_lock ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,struct tipc_portid*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 struct port* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct port*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static void FUNC26(void *dummy)
{
	struct sk_buff *buf;

	FUNC17(&queue_lock);
	buf = msg_queue_head;
	msg_queue_head = NULL;
	FUNC18(&queue_lock);

	while (buf) {
		struct port *p_ptr;
		struct user_port *up_ptr;
		struct tipc_portid orig;
		struct tipc_name_seq dseq;
		void *usr_handle;
		int connected;
		int published;
		u32 message_type;

		struct sk_buff *next = buf->next;
		struct tipc_msg *msg = FUNC1(buf);
		u32 dref = FUNC4(msg);

		message_type = FUNC13(msg);
		if (message_type > TIPC_DIRECT_MSG)
			goto reject;	/* Unsupported message type */

		p_ptr = FUNC22(dref);
		if (!p_ptr)
			goto reject;	/* Port deleted while msg in queue */

		orig.ref = FUNC12(msg);
		orig.node = FUNC11(msg);
		up_ptr = p_ptr->user_port;
		usr_handle = up_ptr->usr_handle;
		connected = p_ptr->publ.connected;
		published = p_ptr->publ.published;

		if (FUNC25(FUNC5(msg)))
			goto err;

		switch (message_type) {

		case TIPC_CONN_MSG:{
				tipc_conn_msg_event cb = up_ptr->conn_msg_cb;
				u32 peer_port = FUNC15(p_ptr);
				u32 peer_node = FUNC14(p_ptr);

				FUNC23(p_ptr);
				if (FUNC25(!cb))
					goto reject;
				if (FUNC25(!connected)) {
					if (FUNC20(dref, &orig))
						goto reject;
				} else if ((FUNC12(msg) != peer_port) ||
					   (FUNC11(msg) != peer_node))
					goto reject;
				if (FUNC25(++p_ptr->publ.conn_unacked >=
					     TIPC_FLOW_CONTROL_WIN))
					FUNC19(dref,
							 p_ptr->publ.conn_unacked);
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg));
				break;
			}
		case TIPC_DIRECT_MSG:{
				tipc_msg_event cb = up_ptr->msg_cb;

				FUNC23(p_ptr);
				if (FUNC25(!cb || connected))
					goto reject;
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg), FUNC7(msg),
				   &orig);
				break;
			}
		case TIPC_MCAST_MSG:
		case TIPC_NAMED_MSG:{
				tipc_named_msg_event cb = up_ptr->named_msg_cb;

				FUNC23(p_ptr);
				if (FUNC25(!cb || connected || !published))
					goto reject;
				dseq.type =  FUNC9(msg);
				dseq.lower = FUNC8(msg);
				dseq.upper = (message_type == TIPC_NAMED_MSG)
					? dseq.lower : FUNC10(msg);
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg), FUNC7(msg),
				   &orig, &dseq);
				break;
			}
		}
		if (buf)
			FUNC0(buf);
		buf = next;
		continue;
err:
		switch (message_type) {

		case TIPC_CONN_MSG:{
				tipc_conn_shutdown_event cb =
					up_ptr->conn_err_cb;
				u32 peer_port = FUNC15(p_ptr);
				u32 peer_node = FUNC14(p_ptr);

				FUNC23(p_ptr);
				if (!cb || !connected)
					break;
				if ((FUNC12(msg) != peer_port) ||
				    (FUNC11(msg) != peer_node))
					break;
				FUNC21(dref);
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg), FUNC5(msg));
				break;
			}
		case TIPC_DIRECT_MSG:{
				tipc_msg_err_event cb = up_ptr->err_cb;

				FUNC23(p_ptr);
				if (!cb || connected)
					break;
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg), FUNC5(msg), &orig);
				break;
			}
		case TIPC_MCAST_MSG:
		case TIPC_NAMED_MSG:{
				tipc_named_msg_err_event cb =
					up_ptr->named_err_cb;

				FUNC23(p_ptr);
				if (!cb || connected)
					break;
				dseq.type =  FUNC9(msg);
				dseq.lower = FUNC8(msg);
				dseq.upper = (message_type == TIPC_NAMED_MSG)
					? dseq.lower : FUNC10(msg);
				FUNC16(buf, FUNC6(msg));
				cb(usr_handle, dref, &buf, FUNC2(msg),
				   FUNC3(msg), FUNC5(msg), &dseq);
				break;
			}
		}
		if (buf)
			FUNC0(buf);
		buf = next;
		continue;
reject:
		FUNC24(buf, TIPC_ERR_NO_PORT);
		buf = next;
	}
}