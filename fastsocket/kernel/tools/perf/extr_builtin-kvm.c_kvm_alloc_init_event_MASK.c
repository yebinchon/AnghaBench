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
struct event_key {int dummy; } ;
struct kvm_event {struct event_key key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct kvm_event* FUNC1 (int) ; 

__attribute__((used)) static struct kvm_event *FUNC2(struct event_key *key)
{
	struct kvm_event *event;

	event = FUNC1(sizeof(*event));
	if (!event) {
		FUNC0("Not enough memory\n");
		return NULL;
	}

	event->key = *key;
	return event;
}