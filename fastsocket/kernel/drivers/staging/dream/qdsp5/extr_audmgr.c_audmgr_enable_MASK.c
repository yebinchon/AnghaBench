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
struct TYPE_2__ {void* client_data; void* cb_func; void* snd_method; void* codec_type; void* def_method; void* rx_sample_rate; void* tx_sample_rate; void* set_to_one; } ;
struct audmgr_enable_msg {int /*<<< orphan*/  hdr; TYPE_1__ args; } ;
struct audmgr_config {int tx_rate; int rx_rate; int def_method; int codec; int snd_method; } ;
struct audmgr {scalar_t__ state; int /*<<< orphan*/  wait; int /*<<< orphan*/  ept; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AUDMGR_ENABLE_CLIENT ; 
 int /*<<< orphan*/  AUDMGR_PROG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 int HZ ; 
 scalar_t__ STATE_DISABLING ; 
 scalar_t__ STATE_ENABLED ; 
 scalar_t__ STATE_ENABLING ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct audmgr_enable_msg*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct audmgr *am, struct audmgr_config *cfg)
{
	struct audmgr_enable_msg msg;
	int rc;

	if (am->state == STATE_ENABLED)
		return 0;

	if (am->state == STATE_DISABLING)
		FUNC5("audmgr: state is DISABLING in enable?\n");
	am->state = STATE_ENABLING;

	msg.args.set_to_one = FUNC1(1);
	msg.args.tx_sample_rate = FUNC1(cfg->tx_rate);
	msg.args.rx_sample_rate = FUNC1(cfg->rx_rate);
	msg.args.def_method = FUNC1(cfg->def_method);
	msg.args.codec_type = FUNC1(cfg->codec);
	msg.args.snd_method = FUNC1(cfg->snd_method);
	msg.args.cb_func = FUNC1(0x11111111);
	msg.args.client_data = FUNC1(0x11223344);

	FUNC3(&msg.hdr, AUDMGR_PROG, FUNC2(am->ept),
			  AUDMGR_ENABLE_CLIENT);

	rc = FUNC4(am->ept, &msg, sizeof(msg));
	if (rc < 0)
		return rc;

	rc = FUNC6(am->wait, am->state != STATE_ENABLING, 15 * HZ);
	if (rc == 0) {
		FUNC5("audmgr_enable: ARM9 did not reply to RPC am->state = %d\n", am->state);
		FUNC0();
	}
	if (am->state == STATE_ENABLED)
		return 0;

	FUNC5("audmgr: unexpected state %d while enabling?!\n", am->state);
	return -ENODEV;
}