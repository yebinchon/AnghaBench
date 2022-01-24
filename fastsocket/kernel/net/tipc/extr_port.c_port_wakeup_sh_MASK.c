#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  (* tipc_continue_event ) (void*,unsigned long) ;
struct user_port {void* usr_handle; int /*<<< orphan*/  (* continue_event_cb ) (void*,unsigned long) ;} ;
struct port {struct user_port* user_port; } ;

/* Variables and functions */
 struct port* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 

__attribute__((used)) static void FUNC2(unsigned long ref)
{
	struct port *p_ptr;
	struct user_port *up_ptr;
	tipc_continue_event cb = NULL;
	void *uh = NULL;

	p_ptr = FUNC0(ref);
	if (p_ptr) {
		up_ptr = p_ptr->user_port;
		if (up_ptr) {
			cb = up_ptr->continue_event_cb;
			uh = up_ptr->usr_handle;
		}
		FUNC1(p_ptr);
	}
	if (cb)
		cb(uh, ref);
}