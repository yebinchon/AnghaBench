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

/* Variables and functions */
 int /*<<< orphan*/  RDS_INFO_CONNECTIONS ; 
 int /*<<< orphan*/  RDS_INFO_RETRANS_MESSAGES ; 
 int /*<<< orphan*/  RDS_INFO_SEND_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_conn_hash ; 
 int /*<<< orphan*/  rds_conn_info ; 
 int /*<<< orphan*/  rds_conn_message_info_retrans ; 
 int /*<<< orphan*/  rds_conn_message_info_send ; 
 int /*<<< orphan*/  rds_conn_slab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	FUNC4();

	FUNC0(!FUNC1(rds_conn_hash));

	FUNC2(rds_conn_slab);

	FUNC3(RDS_INFO_CONNECTIONS, rds_conn_info);
	FUNC3(RDS_INFO_SEND_MESSAGES,
				 rds_conn_message_info_send);
	FUNC3(RDS_INFO_RETRANS_MESSAGES,
				 rds_conn_message_info_retrans);
}