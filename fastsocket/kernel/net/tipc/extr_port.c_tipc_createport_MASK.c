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
typedef  int /*<<< orphan*/  tipc_named_msg_event ;
typedef  int /*<<< orphan*/  tipc_named_msg_err_event ;
typedef  int /*<<< orphan*/  tipc_msg_event ;
typedef  int /*<<< orphan*/  tipc_msg_err_event ;
typedef  int /*<<< orphan*/  tipc_continue_event ;
typedef  int /*<<< orphan*/  tipc_conn_shutdown_event ;
typedef  int /*<<< orphan*/  tipc_conn_msg_event ;
struct user_port {int /*<<< orphan*/  uport_list; int /*<<< orphan*/  continue_event_cb; int /*<<< orphan*/  conn_msg_cb; int /*<<< orphan*/  named_msg_cb; int /*<<< orphan*/  msg_cb; int /*<<< orphan*/  conn_err_cb; int /*<<< orphan*/  named_err_cb; int /*<<< orphan*/  err_cb; int /*<<< orphan*/  ref; void* usr_handle; int /*<<< orphan*/  user_ref; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;
struct port {TYPE_1__ publ; struct user_port* user_port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct user_port*) ; 
 struct user_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_dispatcher ; 
 int /*<<< orphan*/  port_wakeup ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct port*) ; 
 int /*<<< orphan*/  FUNC5 (struct user_port*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(u32 user_ref,
		    void *usr_handle,
		    unsigned int importance,
		    tipc_msg_err_event error_cb,
		    tipc_named_msg_err_event named_error_cb,
		    tipc_conn_shutdown_event conn_error_cb,
		    tipc_msg_event msg_cb,
		    tipc_named_msg_event named_msg_cb,
		    tipc_conn_msg_event conn_msg_cb,
		    tipc_continue_event continue_event_cb,/* May be zero */
		    u32 *portref)
{
	struct user_port *up_ptr;
	struct port *p_ptr;

	up_ptr = FUNC2(sizeof(*up_ptr), GFP_ATOMIC);
	if (!up_ptr) {
		FUNC6("Port creation failed, no memory\n");
		return -ENOMEM;
	}
	p_ptr = (struct port *)FUNC3(NULL, port_dispatcher,
						   port_wakeup, importance);
	if (!p_ptr) {
		FUNC1(up_ptr);
		return -ENOMEM;
	}

	p_ptr->user_port = up_ptr;
	up_ptr->user_ref = user_ref;
	up_ptr->usr_handle = usr_handle;
	up_ptr->ref = p_ptr->publ.ref;
	up_ptr->err_cb = error_cb;
	up_ptr->named_err_cb = named_error_cb;
	up_ptr->conn_err_cb = conn_error_cb;
	up_ptr->msg_cb = msg_cb;
	up_ptr->named_msg_cb = named_msg_cb;
	up_ptr->conn_msg_cb = conn_msg_cb;
	up_ptr->continue_event_cb = continue_event_cb;
	FUNC0(&up_ptr->uport_list);
	FUNC5(up_ptr);
	*portref = p_ptr->publ.ref;
	FUNC4(p_ptr);
	return 0;
}