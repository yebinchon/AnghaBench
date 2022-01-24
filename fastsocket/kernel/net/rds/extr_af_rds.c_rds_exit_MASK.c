#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_INFO_RECV_MESSAGES ; 
 int /*<<< orphan*/  RDS_INFO_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ rds_family_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  rds_proto ; 
 int /*<<< orphan*/  rds_sock_inc_info ; 
 int /*<<< orphan*/  rds_sock_info ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	FUNC8(rds_family_ops.family);
	FUNC0(&rds_proto);
	FUNC2();
	FUNC1();
	FUNC6();
	FUNC7();
	FUNC5();
	FUNC4();
	FUNC3(RDS_INFO_SOCKETS, rds_sock_info);
	FUNC3(RDS_INFO_RECV_MESSAGES, rds_sock_inc_info);
}