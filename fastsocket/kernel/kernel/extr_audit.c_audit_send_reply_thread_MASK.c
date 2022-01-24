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
struct audit_reply {int /*<<< orphan*/  pid; int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  audit_cmd_mutex ; 
 int /*<<< orphan*/  audit_sock ; 
 int /*<<< orphan*/  FUNC0 (struct audit_reply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	struct audit_reply *reply = (struct audit_reply *)arg;

	FUNC1(&audit_cmd_mutex);
	FUNC2(&audit_cmd_mutex);

	/* Ignore failure. It'll only happen if the sender goes away,
	   because our timeout is set to infinite. */
	FUNC3(audit_sock, reply->skb, reply->pid, 0);
	FUNC0(reply);
	return 0;
}