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
struct rds_iw_connection {int /*<<< orphan*/  i_credits; } ;
struct rds_connection {int /*<<< orphan*/  c_send_w; int /*<<< orphan*/  c_flags; struct rds_iw_connection* c_transport_data; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  RDS_LL_SEND_FULL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int,char*) ; 
 int /*<<< orphan*/  s_iw_rx_credit_updates ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct rds_connection *conn, unsigned int credits)
{
	struct rds_iw_connection *ic = conn->c_transport_data;

	if (credits == 0)
		return;

	FUNC7("rds_iw_send_add_credits(%u): current=%u%s\n",
			credits,
			FUNC0(FUNC4(&ic->i_credits)),
			FUNC9(RDS_LL_SEND_FULL, &conn->c_flags) ? ", ll_send_full" : "");

	FUNC3(FUNC1(credits), &ic->i_credits);
	if (FUNC8(RDS_LL_SEND_FULL, &conn->c_flags))
		FUNC5(rds_wq, &conn->c_send_w, 0);

	FUNC2(FUNC0(credits) >= 16384);

	FUNC6(s_iw_rx_credit_updates);
}