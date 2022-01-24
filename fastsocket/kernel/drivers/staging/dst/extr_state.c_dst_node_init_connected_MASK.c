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
struct dst_state {int /*<<< orphan*/  ctl; } ;
struct dst_node {struct dst_state* state; } ;
struct dst_network_ctl {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dst_state*) ; 
 int FUNC1 (struct dst_state*) ; 
 int FUNC2 (struct dst_state*) ; 
 struct dst_state* FUNC3 (struct dst_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*) ; 
 int FUNC6 (struct dst_state*) ; 
 int FUNC7 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct dst_network_ctl*,int) ; 

int FUNC9(struct dst_node *n, struct dst_network_ctl *r)
{
	struct dst_state *st;
	int err = -ENOMEM;

	st = FUNC3(n);
	if (FUNC0(st)) {
		err = FUNC1(st);
		goto err_out_exit;
	}
	FUNC8(&st->ctl, r, sizeof(struct dst_network_ctl));

	err = FUNC6(st);
	if (err)
		goto err_out_free_data;

	err = FUNC2(st);
	if (err)
		goto err_out_exit_connected;
	n->state = st;

	err = FUNC7(st);
	if (err)
		goto err_out_exit_connected;

	return 0;

err_out_exit_connected:
	FUNC4(st);
err_out_free_data:
	FUNC5(st);
err_out_exit:
	n->state = NULL;
	return err;
}