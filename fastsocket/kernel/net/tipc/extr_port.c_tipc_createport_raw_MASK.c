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
struct tipc_port {struct tipc_msg phdr; scalar_t__ ref; int /*<<< orphan*/  max_pkt; void* usr_handle; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  nodesub_list; } ;
struct port {int last_in_seqno; int sent; void (* wakeup ) (struct tipc_port*) ;struct tipc_port publ; int /*<<< orphan*/  port_list; int /*<<< orphan*/  publications; int /*<<< orphan*/  timer; int /*<<< orphan*/ * user_port; scalar_t__ (* dispatcher ) (struct tipc_port*,struct sk_buff*) ;int /*<<< orphan*/ * congested_link; TYPE_1__ subscription; int /*<<< orphan*/  wait_list; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LONG_H_SIZE ; 
 int /*<<< orphan*/  MAX_PKT_DEFAULT ; 
 int /*<<< orphan*/  TIPC_NAMED_MSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 struct port* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 scalar_t__ port_timeout ; 
 int /*<<< orphan*/  ports ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_port_list_lock ; 
 scalar_t__ FUNC9 (struct port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

struct tipc_port *FUNC11(void *usr_handle,
			u32 (*dispatcher)(struct tipc_port *, struct sk_buff *),
			void (*wakeup)(struct tipc_port *),
			const u32 importance)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	u32 ref;

	p_ptr = FUNC3(sizeof(*p_ptr), GFP_ATOMIC);
	if (!p_ptr) {
		FUNC10("Port creation failed, no memory\n");
		return NULL;
	}
	ref = FUNC9(p_ptr, &p_ptr->publ.lock);
	if (!ref) {
		FUNC10("Port creation failed, reference table exhausted\n");
		FUNC2(p_ptr);
		return NULL;
	}

	p_ptr->publ.usr_handle = usr_handle;
	p_ptr->publ.max_pkt = MAX_PKT_DEFAULT;
	p_ptr->publ.ref = ref;
	msg = &p_ptr->publ.phdr;
	FUNC5(msg, importance, TIPC_NAMED_MSG, LONG_H_SIZE, 0);
	FUNC6(msg, ref);
	p_ptr->last_in_seqno = 41;
	p_ptr->sent = 1;
	FUNC0(&p_ptr->wait_list);
	FUNC0(&p_ptr->subscription.nodesub_list);
	p_ptr->congested_link = NULL;
	p_ptr->dispatcher = dispatcher;
	p_ptr->wakeup = wakeup;
	p_ptr->user_port = NULL;
	FUNC1(&p_ptr->timer, (Handler)port_timeout, ref);
	FUNC7(&tipc_port_list_lock);
	FUNC0(&p_ptr->publications);
	FUNC0(&p_ptr->port_list);
	FUNC4(&p_ptr->port_list, &ports);
	FUNC8(&tipc_port_list_lock);
	return &(p_ptr->publ);
}