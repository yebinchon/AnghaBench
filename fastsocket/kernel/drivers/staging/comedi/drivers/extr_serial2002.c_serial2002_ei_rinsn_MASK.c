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
struct serial_data {scalar_t__ kind; int index; unsigned int value; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* encoder_in_mapping; int /*<<< orphan*/  tty; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 
 scalar_t__ is_channel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct serial_data FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s,
			       struct comedi_insn *insn, unsigned int *data)
{
	int n;
	int chan;

	chan = devpriv->encoder_in_mapping[FUNC0(insn->chanspec)];
	for (n = 0; n < insn->n; n++) {
		struct serial_data read;

		FUNC1(devpriv->tty, chan);
		while (1) {
			read = FUNC2(devpriv->tty, 1000);
			if (read.kind != is_channel || read.index == chan) {
				break;
			}
		}
		data[n] = read.value;
	}
	return n;
}