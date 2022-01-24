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
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_data_len; } ;
struct dst_network_ctl {TYPE_1__ addr; } ;
struct dst_state {int /*<<< orphan*/  socket; struct dst_network_ctl ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,char*) ; 
 int FUNC1 (struct dst_state*) ; 
 int FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dst_state *st)
{
	int err;
	struct dst_network_ctl *ctl = &st->ctl;

	err = FUNC2(st);
	if (err)
		goto err_out_exit;

	err = FUNC4(st->socket, (struct sockaddr *)&st->ctl.addr,
			st->ctl.addr.sa_data_len, 0);
	if (err)
		goto err_out_release;

	err = FUNC1(st);
	if (err)
		goto err_out_release;

	FUNC0(st->socket, (struct sockaddr *)&ctl->addr,
			"Connected to peer");

	return 0;

err_out_release:
	FUNC3(st);
err_out_exit:
	return err;
}