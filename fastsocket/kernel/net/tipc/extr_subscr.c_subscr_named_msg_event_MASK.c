#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unchar ;
typedef  scalar_t__ u32 ;
struct tipc_portid {int dummy; } ;
struct tipc_name_seq {int dummy; } ;
struct subscriber {scalar_t__ port_ref; int /*<<< orphan*/ * lock; int /*<<< orphan*/  subscriber_list; int /*<<< orphan*/  subscription_list; } ;
struct sk_buff {int dummy; } ;
struct iovec {int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_6__ {TYPE_1__ publ; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  subscriber_list; int /*<<< orphan*/  user_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct subscriber*) ; 
 struct subscriber* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct subscriber*,scalar_t__,struct sk_buff**,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  subscr_conn_shutdown_event ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct tipc_portid const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct subscriber*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct subscriber*,scalar_t__,struct sk_buff**,int /*<<< orphan*/  const*,scalar_t__),int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_3__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,struct iovec*) ; 
 TYPE_2__ topsrv ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void *usr_handle,
				   u32 port_ref,
				   struct sk_buff **buf,
				   const unchar *data,
				   u32 size,
				   u32 importance,
				   struct tipc_portid const *orig,
				   struct tipc_name_seq const *dest)
{
	static struct iovec msg_sect = {NULL, 0};

	struct subscriber *subscriber;
	u32 server_port_ref;

	/* Create subscriber object */

	subscriber = FUNC2(sizeof(struct subscriber), GFP_ATOMIC);
	if (subscriber == NULL) {
		FUNC11("Subscriber rejected, no memory\n");
		return;
	}
	FUNC0(&subscriber->subscription_list);
	FUNC0(&subscriber->subscriber_list);

	/* Create server port & establish connection to subscriber */

	FUNC8(topsrv.user_ref,
			subscriber,
			importance,
			NULL,
			NULL,
			subscr_conn_shutdown_event,
			NULL,
			NULL,
			subscr_conn_msg_event,
			NULL,
			&subscriber->port_ref);
	if (subscriber->port_ref == 0) {
		FUNC11("Subscriber rejected, unable to create port\n");
		FUNC1(subscriber);
		return;
	}
	FUNC7(subscriber->port_ref, orig);

	/* Lock server port (& save lock address for future use) */

	subscriber->lock = FUNC9(subscriber->port_ref)->publ.lock;

	/* Add subscriber to topology server's subscriber list */

	FUNC4(&topsrv.lock);
	FUNC3(&subscriber->subscriber_list, &topsrv.subscriber_list);
	FUNC5(&topsrv.lock);

	/* Unlock server port */

	server_port_ref = subscriber->port_ref;
	FUNC5(subscriber->lock);

	/* Send an ACK- to complete connection handshaking */

	FUNC10(server_port_ref, 1, &msg_sect);

	/* Handle optional subscription request */

	if (size != 0) {
		FUNC6(subscriber, server_port_ref,
				      buf, data, size);
	}
}