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
typedef  unsigned int uint16_t ;
struct audio_in {int running; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 unsigned int AUDREC_MSG_CFG_DONE_TYPE_0_ENA ; 
 unsigned int AUDREC_MSG_CFG_DONE_TYPE_0_UPDATE ; 
#define  AUDREC_MSG_CMD_AREC_PARAM_CFG_DONE_MSG 131 
#define  AUDREC_MSG_CMD_CFG_DONE_MSG 130 
#define  AUDREC_MSG_FATAL_ERR_MSG 129 
#define  AUDREC_MSG_PACKET_READY_MSG 128 
 int /*<<< orphan*/  FUNC0 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC2 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC3 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC4 (struct audio_in*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(void *data, unsigned id, size_t len,
			    void (*getevent)(void *ptr, size_t len))
{
	struct audio_in *audio = data;
	uint16_t msg[3];
	getevent(msg, sizeof(msg));

	switch (id) {
	case AUDREC_MSG_CMD_CFG_DONE_MSG:
		if (msg[0] & AUDREC_MSG_CFG_DONE_TYPE_0_UPDATE) {
			if (msg[0] & AUDREC_MSG_CFG_DONE_TYPE_0_ENA) {
				FUNC6("audpre: CFG ENABLED\n");
				FUNC0(audio);
				FUNC1(audio);
				FUNC2(audio);
				FUNC3(audio);
			} else {
				FUNC6("audrec: CFG SLEEP\n");
				audio->running = 0;
			}
		} else {
			FUNC6("audrec: CMD_CFG_DONE %x\n", msg[0]);
		}
		break;
	case AUDREC_MSG_CMD_AREC_PARAM_CFG_DONE_MSG: {
		FUNC6("audrec: PARAM CFG DONE\n");
		audio->running = 1;
		break;
	}
	case AUDREC_MSG_FATAL_ERR_MSG:
		FUNC5("audrec: ERROR %x\n", msg[0]);
		break;
	case AUDREC_MSG_PACKET_READY_MSG:
/* REC_DBG("type %x, count %d", msg[0], (msg[1] | (msg[2] << 16))); */
		FUNC4(audio);
		break;
	default:
		FUNC5("audrec: unknown event %d\n", id);
	}
}