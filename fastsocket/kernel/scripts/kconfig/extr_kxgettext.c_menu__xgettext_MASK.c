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
struct message {struct message* next; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 struct message* message__list ; 
 int /*<<< orphan*/  FUNC0 (struct message*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct message *m = message__list;

	while (m != NULL) {
		/* skip empty lines ("") */
		if (FUNC1(m->msg) > sizeof("\"\""))
			FUNC0(m);
		m = m->next;
	}
}