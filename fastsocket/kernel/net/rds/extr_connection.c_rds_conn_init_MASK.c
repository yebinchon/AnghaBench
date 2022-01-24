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
struct rds_connection {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RDS_INFO_CONNECTIONS ; 
 int /*<<< orphan*/  RDS_INFO_RETRANS_MESSAGES ; 
 int /*<<< orphan*/  RDS_INFO_SEND_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_conn_info ; 
 int /*<<< orphan*/  rds_conn_message_info_retrans ; 
 int /*<<< orphan*/  rds_conn_message_info_send ; 
 int /*<<< orphan*/  rds_conn_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	rds_conn_slab = FUNC0("rds_connection",
					  sizeof(struct rds_connection),
					  0, 0, NULL);
	if (!rds_conn_slab)
		return -ENOMEM;

	FUNC1(RDS_INFO_CONNECTIONS, rds_conn_info);
	FUNC1(RDS_INFO_SEND_MESSAGES,
			       rds_conn_message_info_send);
	FUNC1(RDS_INFO_RETRANS_MESSAGES,
			       rds_conn_message_info_retrans);

	return 0;
}