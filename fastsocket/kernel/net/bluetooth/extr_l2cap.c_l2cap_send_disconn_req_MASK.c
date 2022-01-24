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
struct sock {int dummy; } ;
struct l2cap_disconn_req {void* scid; void* dcid; } ;
struct l2cap_conn {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  scid; int /*<<< orphan*/  dcid; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_DISCONN_REQ ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_disconn_req*) ; 

__attribute__((used)) static void FUNC4(struct l2cap_conn *conn, struct sock *sk)
{
	struct l2cap_disconn_req req;

	req.dcid = FUNC0(FUNC2(sk)->dcid);
	req.scid = FUNC0(FUNC2(sk)->scid);
	FUNC3(conn, FUNC1(conn),
			L2CAP_DISCONN_REQ, sizeof(req), &req);
}