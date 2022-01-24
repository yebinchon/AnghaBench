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
struct rds_message {int /*<<< orphan*/  m_conn_item; int /*<<< orphan*/  m_sock_item; int /*<<< orphan*/  m_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct rds_message*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct rds_message*,int /*<<< orphan*/ ) ; 

void FUNC8(struct rds_message *rm)
{
	FUNC7("put rm %p ref %d\n", rm, FUNC3(&rm->m_refcount));
	FUNC1(!FUNC3(&rm->m_refcount), "danger refcount zero on %p\n", rm);
	if (FUNC2(&rm->m_refcount)) {
		FUNC0(!FUNC5(&rm->m_sock_item));
		FUNC0(!FUNC5(&rm->m_conn_item));
		FUNC6(rm);

		FUNC4(rm);
	}
}