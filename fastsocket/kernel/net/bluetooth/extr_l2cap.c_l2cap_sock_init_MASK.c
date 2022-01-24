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
struct sock {int /*<<< orphan*/  sk_type; } ;
struct l2cap_pinfo {int /*<<< orphan*/  flush_to; scalar_t__ conf_len; scalar_t__ force_reliable; scalar_t__ role_switch; int /*<<< orphan*/  sec_level; int /*<<< orphan*/  fcs; int /*<<< orphan*/  mode; scalar_t__ omtu; int /*<<< orphan*/  imtu; } ;
struct TYPE_2__ {int /*<<< orphan*/  defer_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_FLUSH_TO ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MTU ; 
 int /*<<< orphan*/  L2CAP_FCS_CRC16 ; 
 int /*<<< orphan*/  L2CAP_MODE_BASIC ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 struct l2cap_pinfo* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, struct sock *parent)
{
	struct l2cap_pinfo *pi = FUNC6(sk);

	FUNC0("sk %p", sk);

	if (parent) {
		sk->sk_type = parent->sk_type;
		FUNC5(sk)->defer_setup = FUNC5(parent)->defer_setup;

		pi->imtu = FUNC6(parent)->imtu;
		pi->omtu = FUNC6(parent)->omtu;
		pi->mode = FUNC6(parent)->mode;
		pi->fcs  = FUNC6(parent)->fcs;
		pi->sec_level = FUNC6(parent)->sec_level;
		pi->role_switch = FUNC6(parent)->role_switch;
		pi->force_reliable = FUNC6(parent)->force_reliable;
	} else {
		pi->imtu = L2CAP_DEFAULT_MTU;
		pi->omtu = 0;
		pi->mode = L2CAP_MODE_BASIC;
		pi->fcs  = L2CAP_FCS_CRC16;
		pi->sec_level = BT_SECURITY_LOW;
		pi->role_switch = 0;
		pi->force_reliable = 0;
	}

	/* Default config options */
	pi->conf_len = 0;
	pi->flush_to = L2CAP_DEFAULT_FLUSH_TO;
	FUNC7(FUNC4(sk));
	FUNC7(FUNC3(sk));
	FUNC1(FUNC2(sk));
}