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
struct ax25_protocol {unsigned int pid; struct ax25_protocol* next; } ;

/* Variables and functions */
 struct ax25_protocol* protocol_list ; 
 int /*<<< orphan*/  protocol_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(unsigned int pid)
{
	struct ax25_protocol *s, *protocol;

	FUNC0(&protocol_list_lock);
	protocol = protocol_list;
	if (protocol == NULL)
		goto out;

	if (protocol->pid == pid) {
		protocol_list = protocol->next;
		goto out;
	}

	while (protocol != NULL && protocol->next != NULL) {
		if (protocol->next->pid == pid) {
			s = protocol->next;
			protocol->next = protocol->next->next;
			goto out;
		}

		protocol = protocol->next;
	}
out:
	FUNC1(&protocol_list_lock);
}