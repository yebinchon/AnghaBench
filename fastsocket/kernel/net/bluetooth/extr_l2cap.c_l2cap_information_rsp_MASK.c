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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct l2cap_info_rsp {int /*<<< orphan*/  data; int /*<<< orphan*/  result; int /*<<< orphan*/  type; } ;
struct l2cap_info_req {int /*<<< orphan*/  type; } ;
struct l2cap_conn {int feat_mask; scalar_t__ info_ident; int /*<<< orphan*/  info_state; int /*<<< orphan*/  info_timer; } ;
struct l2cap_cmd_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int L2CAP_FEAT_FIXED_CHAN ; 
 int /*<<< orphan*/  L2CAP_INFO_FEAT_MASK_REQ_DONE ; 
 int /*<<< orphan*/  L2CAP_INFO_REQ ; 
 scalar_t__ L2CAP_IT_FEAT_MASK ; 
 scalar_t__ L2CAP_IT_FIXED_CHAN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*) ; 
 scalar_t__ FUNC6 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,scalar_t__,int /*<<< orphan*/ ,int,struct l2cap_info_req*) ; 

__attribute__((used)) static inline int FUNC8(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
	struct l2cap_info_rsp *rsp = (struct l2cap_info_rsp *) data;
	u16 type, result;

	type   = FUNC1(rsp->type);
	result = FUNC1(rsp->result);

	FUNC0("type 0x%4.4x result 0x%2.2x", type, result);

	FUNC3(&conn->info_timer);

	if (type == L2CAP_IT_FEAT_MASK) {
		conn->feat_mask = FUNC4(rsp->data);

		if (conn->feat_mask & L2CAP_FEAT_FIXED_CHAN) {
			struct l2cap_info_req req;
			req.type = FUNC2(L2CAP_IT_FIXED_CHAN);

			conn->info_ident = FUNC6(conn);

			FUNC7(conn, conn->info_ident,
					L2CAP_INFO_REQ, sizeof(req), &req);
		} else {
			conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
			conn->info_ident = 0;

			FUNC5(conn);
		}
	} else if (type == L2CAP_IT_FIXED_CHAN) {
		conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
		conn->info_ident = 0;

		FUNC5(conn);
	}

	return 0;
}