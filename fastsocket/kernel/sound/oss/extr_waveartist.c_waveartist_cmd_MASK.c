#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int io_base; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ wavnc_info ;

/* Variables and functions */
 scalar_t__ CMDR ; 
 int CMD_RF ; 
 int CMD_WE ; 
 int DEBUG_CMD ; 
 scalar_t__ STATR ; 
 int debug_flg ; 
 int FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(wavnc_info *devc,
		int nr_cmd, unsigned int *cmd,
		int nr_resp, unsigned int *resp)
{
	unsigned int io_base = devc->hw.io_base;
	unsigned int timed_out = 0;
	unsigned int i;

	if (debug_flg & DEBUG_CMD) {
		FUNC3("waveartist_cmd: cmd=");

		for (i = 0; i < nr_cmd; i++)
			FUNC3("%04X ", cmd[i]);

		FUNC3("\n");
	}

	if (FUNC0(io_base + STATR) & CMD_RF) {
		int old_data;

		/* flush the port
		 */

		old_data = FUNC1(io_base + CMDR);

		if (debug_flg & DEBUG_CMD)
			FUNC3("flushed %04X...", old_data);

		FUNC4(10);
	}

	for (i = 0; !timed_out && i < nr_cmd; i++) {
		int count;

		for (count = 5000; count; count--)
			if (FUNC0(io_base + STATR) & CMD_WE)
				break;

		if (!count)
			timed_out = 1;
		else
			FUNC2(cmd[i], io_base + CMDR);
	}

	for (i = 0; !timed_out && i < nr_resp; i++) {
		int count;

		for (count = 5000; count; count--)
			if (FUNC0(io_base + STATR) & CMD_RF)
				break;

		if (!count)
			timed_out = 1;
		else
			resp[i] = FUNC1(io_base + CMDR);
	}

	if (debug_flg & DEBUG_CMD) {
		if (!timed_out) {
			FUNC3("waveartist_cmd: resp=");

			for (i = 0; i < nr_resp; i++)
				FUNC3("%04X ", resp[i]);

			FUNC3("\n");
		} else
			FUNC3("waveartist_cmd: timed out\n");
	}

	return timed_out ? 1 : 0;
}