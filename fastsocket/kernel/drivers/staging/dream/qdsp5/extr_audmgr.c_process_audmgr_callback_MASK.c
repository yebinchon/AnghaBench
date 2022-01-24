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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  volume; int /*<<< orphan*/  handle; } ;
struct rpc_audmgr_cb_func_ptr {TYPE_1__ u; int /*<<< orphan*/  status; int /*<<< orphan*/  set_to_one; } ;
struct audmgr {int handle; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; } ;

/* Variables and functions */
#define  RPC_AUDMGR_STATUS_CODEC_CONFIG 135 
#define  RPC_AUDMGR_STATUS_DISABLED 134 
#define  RPC_AUDMGR_STATUS_ERROR 133 
#define  RPC_AUDMGR_STATUS_FAILURE 132 
#define  RPC_AUDMGR_STATUS_PENDING 131 
#define  RPC_AUDMGR_STATUS_READY 130 
#define  RPC_AUDMGR_STATUS_SUSPEND 129 
#define  RPC_AUDMGR_STATUS_VOLUME_CHANGE 128 
 int /*<<< orphan*/  STATE_DISABLED ; 
 int /*<<< orphan*/  STATE_ENABLED ; 
 int /*<<< orphan*/  STATE_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct audmgr *am,
				   struct rpc_audmgr_cb_func_ptr *args,
				   int len)
{
	if (len < (sizeof(uint32_t) * 3))
		return;
	if (FUNC0(args->set_to_one) != 1)
		return;

	switch (FUNC0(args->status)) {
	case RPC_AUDMGR_STATUS_READY:
		if (len < sizeof(uint32_t) * 4)
			break;
		am->handle = FUNC0(args->u.handle);
		FUNC2("audmgr: rpc READY handle=0x%08x\n", am->handle);
		break;
	case RPC_AUDMGR_STATUS_CODEC_CONFIG: {
		uint32_t volume;
		if (len < sizeof(uint32_t) * 4)
			break;
		volume = FUNC0(args->u.volume);
		FUNC2("audmgr: rpc CODEC_CONFIG volume=0x%08x\n", volume);
		am->state = STATE_ENABLED;
		FUNC3(&am->wait);
		break;
	}
	case RPC_AUDMGR_STATUS_PENDING:
		FUNC1("audmgr: PENDING?\n");
		break;
	case RPC_AUDMGR_STATUS_SUSPEND:
		FUNC1("audmgr: SUSPEND?\n");
		break;
	case RPC_AUDMGR_STATUS_FAILURE:
		FUNC1("audmgr: FAILURE\n");
		break;
	case RPC_AUDMGR_STATUS_VOLUME_CHANGE:
		FUNC1("audmgr: VOLUME_CHANGE?\n");
		break;
	case RPC_AUDMGR_STATUS_DISABLED:
		FUNC1("audmgr: DISABLED\n");
		am->state = STATE_DISABLED;
		FUNC3(&am->wait);
		break;
	case RPC_AUDMGR_STATUS_ERROR:
		FUNC1("audmgr: ERROR?\n");
		am->state = STATE_ERROR;
		FUNC3(&am->wait);
		break;
	default:
		break;
	}
}