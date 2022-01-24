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
struct connection {int /*<<< orphan*/  swork; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CLOSE ; 
 int /*<<< orphan*/  CF_CONNECT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct connection *con)
{
	if (FUNC2(CF_CLOSE, &con->flags))
		return;
	if (!FUNC1(CF_CONNECT_PENDING, &con->flags))
		FUNC0(send_workqueue, &con->swork);
}