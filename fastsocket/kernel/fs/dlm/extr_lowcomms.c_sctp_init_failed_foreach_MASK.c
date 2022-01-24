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
struct connection {int /*<<< orphan*/  swork; int /*<<< orphan*/  flags; scalar_t__ sctp_assoc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONNECT_PENDING ; 
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_workqueue ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct connection *con)
{
	con->sctp_assoc = 0;
	if (FUNC1(CF_CONNECT_PENDING, &con->flags)) {
		if (!FUNC2(CF_WRITE_PENDING, &con->flags))
			FUNC0(send_workqueue, &con->swork);
	}
}