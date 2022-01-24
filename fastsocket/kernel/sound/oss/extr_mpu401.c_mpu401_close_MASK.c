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
struct mpu_config {scalar_t__ opened; int /*<<< orphan*/ * inputintr; scalar_t__ mode; scalar_t__ uart_mode; } ;
struct coproc_operations {int /*<<< orphan*/  owner; int /*<<< orphan*/  devc; int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {struct coproc_operations* coproc; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPR_MIDI ; 
 struct mpu_config* dev_conf ; 
 TYPE_1__** midi_devs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpu_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int dev)
{
	struct mpu_config *devc;
	struct coproc_operations *coprocessor;

	devc = &dev_conf[dev];
	if (devc->uart_mode)
		FUNC1(devc);	/*
					 * This disables the UART mode
					 */
	devc->mode = 0;
	devc->inputintr = NULL;

	coprocessor = midi_devs[dev]->coproc;
	if (coprocessor) {
		coprocessor->close(coprocessor->devc, COPR_MIDI);
		FUNC0(coprocessor->owner);
	}
	devc->opened = 0;
}