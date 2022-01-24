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
struct audio {int running; int /*<<< orphan*/  dec_id; int /*<<< orphan*/  volume; int /*<<< orphan*/  out_needed; int /*<<< orphan*/  pcm_feedback; } ;

/* Variables and functions */
#define  AUDPP_DEC_STATUS_CFG 134 
#define  AUDPP_DEC_STATUS_INIT 133 
#define  AUDPP_DEC_STATUS_PLAY 132 
#define  AUDPP_DEC_STATUS_SLEEP 131 
#define  AUDPP_MSG_CFG_MSG 130 
 unsigned int AUDPP_MSG_ENA_DIS ; 
 unsigned int AUDPP_MSG_ENA_ENA ; 
#define  AUDPP_MSG_ROUTING_ACK 129 
#define  AUDPP_MSG_STATUS_MSG 128 
 int /*<<< orphan*/  FUNC0 (struct audio*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct audio*) ; 
 int /*<<< orphan*/  FUNC3 (struct audio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audio*) ; 
 int /*<<< orphan*/  FUNC6 (struct audio*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9(void *private, unsigned id, uint16_t *msg)
{
	struct audio *audio = private;

	switch (id) {
	case AUDPP_MSG_STATUS_MSG:{
			unsigned status = msg[1];

			switch (status) {
			case AUDPP_DEC_STATUS_SLEEP:
				FUNC7("decoder status: sleep \n");
				break;

			case AUDPP_DEC_STATUS_INIT:
				FUNC7("decoder status: init \n");
				FUNC3(audio);
				break;

			case AUDPP_DEC_STATUS_CFG:
				FUNC7("decoder status: cfg \n");
				break;
			case AUDPP_DEC_STATUS_PLAY:
				FUNC7("decoder status: play \n");
				if (audio->pcm_feedback) {
					FUNC6(audio);
					FUNC5(audio);
				}
				break;
			default:
				FUNC8("unknown decoder status \n");
			}
			break;
		}
	case AUDPP_MSG_CFG_MSG:
		if (msg[0] == AUDPP_MSG_ENA_ENA) {
			FUNC7("audqcelp_dsp_event: CFG_MSG ENABLE\n");
			FUNC0(audio, 1);
			audio->out_needed = 0;
			audio->running = 1;
			FUNC4(audio->dec_id, audio->volume,
						 0);
			FUNC1(audio->dec_id, 22050);
		} else if (msg[0] == AUDPP_MSG_ENA_DIS) {
			FUNC7("audqcelp_dsp_event: CFG_MSG DISABLE\n");
			FUNC1(audio->dec_id, 0);
			audio->running = 0;
		} else {
			FUNC8("audqcelp_dsp_event: CFG_MSG %d?\n", msg[0]);
		}
		break;
	case AUDPP_MSG_ROUTING_ACK:
		FUNC7("audqcelp_dsp_event: ROUTING_ACK mode=%d\n", msg[1]);
		FUNC2(audio);
		break;
	default:
		FUNC8("audqcelp_dsp_event: UNKNOWN (%d)\n", id);
	}

}