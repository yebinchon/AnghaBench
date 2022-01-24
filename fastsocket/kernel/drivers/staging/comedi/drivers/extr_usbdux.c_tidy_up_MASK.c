#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbduxsub {int numOfInBuffers; int numOfOutBuffers; scalar_t__ pwm_cmd_running; scalar_t__ ao_cmd_running; scalar_t__ ai_cmd_running; TYPE_2__** dux_commands; TYPE_2__** dac_commands; TYPE_2__** inBuffer; TYPE_2__** insnBuffer; TYPE_2__* urbPwm; TYPE_2__** urbOut; TYPE_2__** urbIn; scalar_t__ probed; TYPE_1__* interface; } ;
struct TYPE_6__ {struct TYPE_6__** transfer_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usbduxsub*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbduxsub*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbduxsub*) ; 

__attribute__((used)) static void FUNC8(struct usbduxsub *usbduxsub_tmp)
{
	int i;

	if (!usbduxsub_tmp)
		return;
	FUNC0(&usbduxsub_tmp->interface->dev, "comedi_: tiding up\n");

	/* shows the usb subsystem that the driver is down */
	if (usbduxsub_tmp->interface)
		FUNC4(usbduxsub_tmp->interface, NULL);

	usbduxsub_tmp->probed = 0;

	if (usbduxsub_tmp->urbIn) {
		if (usbduxsub_tmp->ai_cmd_running) {
			usbduxsub_tmp->ai_cmd_running = 0;
			FUNC5(usbduxsub_tmp);
		}
		for (i = 0; i < usbduxsub_tmp->numOfInBuffers; i++) {
			FUNC1(usbduxsub_tmp->urbIn[i]->transfer_buffer);
			usbduxsub_tmp->urbIn[i]->transfer_buffer = NULL;
			FUNC3(usbduxsub_tmp->urbIn[i]);
			FUNC2(usbduxsub_tmp->urbIn[i]);
			usbduxsub_tmp->urbIn[i] = NULL;
		}
		FUNC1(usbduxsub_tmp->urbIn);
		usbduxsub_tmp->urbIn = NULL;
	}
	if (usbduxsub_tmp->urbOut) {
		if (usbduxsub_tmp->ao_cmd_running) {
			usbduxsub_tmp->ao_cmd_running = 0;
			FUNC6(usbduxsub_tmp);
		}
		for (i = 0; i < usbduxsub_tmp->numOfOutBuffers; i++) {
			if (usbduxsub_tmp->urbOut[i]->transfer_buffer) {
				FUNC1(usbduxsub_tmp->
				      urbOut[i]->transfer_buffer);
				usbduxsub_tmp->urbOut[i]->transfer_buffer =
				    NULL;
			}
			if (usbduxsub_tmp->urbOut[i]) {
				FUNC3(usbduxsub_tmp->urbOut[i]);
				FUNC2(usbduxsub_tmp->urbOut[i]);
				usbduxsub_tmp->urbOut[i] = NULL;
			}
		}
		FUNC1(usbduxsub_tmp->urbOut);
		usbduxsub_tmp->urbOut = NULL;
	}
	if (usbduxsub_tmp->urbPwm) {
		if (usbduxsub_tmp->pwm_cmd_running) {
			usbduxsub_tmp->pwm_cmd_running = 0;
			FUNC7(usbduxsub_tmp);
		}
		FUNC1(usbduxsub_tmp->urbPwm->transfer_buffer);
		usbduxsub_tmp->urbPwm->transfer_buffer = NULL;
		FUNC3(usbduxsub_tmp->urbPwm);
		FUNC2(usbduxsub_tmp->urbPwm);
		usbduxsub_tmp->urbPwm = NULL;
	}
	FUNC1(usbduxsub_tmp->inBuffer);
	usbduxsub_tmp->inBuffer = NULL;
	FUNC1(usbduxsub_tmp->insnBuffer);
	usbduxsub_tmp->insnBuffer = NULL;
	FUNC1(usbduxsub_tmp->inBuffer);
	usbduxsub_tmp->inBuffer = NULL;
	FUNC1(usbduxsub_tmp->dac_commands);
	usbduxsub_tmp->dac_commands = NULL;
	FUNC1(usbduxsub_tmp->dux_commands);
	usbduxsub_tmp->dux_commands = NULL;
	usbduxsub_tmp->ai_cmd_running = 0;
	usbduxsub_tmp->ao_cmd_running = 0;
	usbduxsub_tmp->pwm_cmd_running = 0;
}