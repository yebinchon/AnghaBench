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
typedef  int u32 ;
struct tipc_port {int conn_type; int conn_instance; } ;
struct tipc_msg {int dummy; } ;
struct msghdr {scalar_t__ msg_controllen; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_TIPC ; 
#define  TIPC_CONN_MSG 130 
 int /*<<< orphan*/  TIPC_DESTNAME ; 
 int TIPC_DIRECT_MSG ; 
 int /*<<< orphan*/  TIPC_ERRINFO ; 
#define  TIPC_MCAST_MSG 129 
#define  TIPC_NAMED_MSG 128 
 int /*<<< orphan*/  TIPC_RETDATA ; 
 scalar_t__ FUNC0 (int) ; 
 int* FUNC1 (struct tipc_msg*) ; 
 int FUNC2 (struct tipc_msg*) ; 
 int FUNC3 (struct tipc_msg*) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int FUNC6 (struct tipc_msg*) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int FUNC8 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct msghdr *m, struct tipc_msg *msg,
				struct tipc_port *tport)
{
	u32 anc_data[3];
	u32 err;
	u32 dest_type;
	int has_name;
	int res;

	if (FUNC0(m->msg_controllen == 0))
		return 0;

	/* Optionally capture errored message object(s) */

	err = msg ? FUNC3(msg) : 0;
	if (FUNC9(err)) {
		anc_data[0] = err;
		anc_data[1] = FUNC2(msg);
		if ((res = FUNC8(m, SOL_TIPC, TIPC_ERRINFO, 8, anc_data)))
			return res;
		if (anc_data[1] &&
		    (res = FUNC8(m, SOL_TIPC, TIPC_RETDATA, anc_data[1],
				    FUNC1(msg))))
			return res;
	}

	/* Optionally capture message destination object */

	dest_type = msg ? FUNC7(msg) : TIPC_DIRECT_MSG;
	switch (dest_type) {
	case TIPC_NAMED_MSG:
		has_name = 1;
		anc_data[0] = FUNC5(msg);
		anc_data[1] = FUNC4(msg);
		anc_data[2] = FUNC4(msg);
		break;
	case TIPC_MCAST_MSG:
		has_name = 1;
		anc_data[0] = FUNC5(msg);
		anc_data[1] = FUNC4(msg);
		anc_data[2] = FUNC6(msg);
		break;
	case TIPC_CONN_MSG:
		has_name = (tport->conn_type != 0);
		anc_data[0] = tport->conn_type;
		anc_data[1] = tport->conn_instance;
		anc_data[2] = tport->conn_instance;
		break;
	default:
		has_name = 0;
	}
	if (has_name &&
	    (res = FUNC8(m, SOL_TIPC, TIPC_DESTNAME, 12, anc_data)))
		return res;

	return 0;
}