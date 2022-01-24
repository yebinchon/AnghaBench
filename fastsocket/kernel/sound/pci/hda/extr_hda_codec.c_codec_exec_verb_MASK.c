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
struct hda_codec {int /*<<< orphan*/  addr; struct hda_bus* bus; } ;
struct TYPE_2__ {int (* command ) (struct hda_bus*,unsigned int) ;unsigned int (* get_response ) (struct hda_bus*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* bus_reset ) (struct hda_bus*) ;} ;
struct hda_bus {int no_response_fallback; scalar_t__ response_reset; TYPE_1__ ops; scalar_t__ rirb_error; int /*<<< orphan*/  cmd_mutex; } ;

/* Variables and functions */
 int EAGAIN ; 
 int HDA_RW_NO_RESPONSE_FALLBACK ; 
 scalar_t__ FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct hda_bus*,unsigned int) ; 
 unsigned int FUNC7 (struct hda_bus*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct hda_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct hda_codec *codec, unsigned int cmd,
			   int flags, unsigned int *res)
{
	struct hda_bus *bus = codec->bus;
	int err;

	if (cmd == ~0)
		return -1;

	if (res)
		*res = -1;
 again:
	FUNC4(codec);
	FUNC1(&bus->cmd_mutex);
	if (flags & HDA_RW_NO_RESPONSE_FALLBACK)
		bus->no_response_fallback = 1;
	for (;;) {
		FUNC12(codec, cmd);
		err = bus->ops.command(bus, cmd);
		if (err != -EAGAIN)
			break;
		/* process pending verbs */
		bus->ops.get_response(bus, codec->addr);
	}
	if (!err && res) {
		*res = bus->ops.get_response(bus, codec->addr);
		FUNC11(codec, *res);
	}
	bus->no_response_fallback = 0;
	FUNC2(&bus->cmd_mutex);
	FUNC3(codec);
	if (!FUNC0(codec) && res && *res == -1 && bus->rirb_error) {
		if (bus->response_reset) {
			FUNC5("hda_codec: resetting BUS due to "
				   "fatal communication error\n");
			FUNC10(bus);
			bus->ops.bus_reset(bus);
		}
		goto again;
	}
	/* clear reset-flag when the communication gets recovered */
	if (!err || FUNC0(codec))
		bus->response_reset = 0;
	return err;
}