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
struct snd_seq_oss_reg {struct snd_opl3* private_data; int /*<<< orphan*/  oper; int /*<<< orphan*/  nvoices; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct snd_seq_device {int /*<<< orphan*/  name; } ;
struct snd_opl3 {scalar_t__ hardware; int /*<<< orphan*/  card; struct snd_seq_device* oss_seq_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_TYPE_ADLIB ; 
 int /*<<< orphan*/  FM_TYPE_OPL3 ; 
 int /*<<< orphan*/  MAX_OPL2_VOICES ; 
 int /*<<< orphan*/  MAX_OPL3_VOICES ; 
 scalar_t__ OPL3_HW_OPL3 ; 
 struct snd_seq_oss_reg* FUNC0 (struct snd_seq_device*) ; 
 int /*<<< orphan*/  SNDRV_SEQ_DEV_ID_OSS ; 
 int /*<<< orphan*/  SYNTH_TYPE_FM ; 
 int /*<<< orphan*/  oss_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct snd_seq_device*) ; 
 scalar_t__ FUNC2 (struct snd_opl3*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct snd_seq_device**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC5(struct snd_opl3 *opl3, char *name)
{
	struct snd_seq_oss_reg *arg;
	struct snd_seq_device *dev;

	if (FUNC3(opl3->card, 0, SNDRV_SEQ_DEV_ID_OSS,
			       sizeof(struct snd_seq_oss_reg), &dev) < 0)
		return;

	opl3->oss_seq_dev = dev;
	FUNC4(dev->name, name, sizeof(dev->name));
	arg = FUNC0(dev);
	arg->type = SYNTH_TYPE_FM;
	if (opl3->hardware < OPL3_HW_OPL3) {
		arg->subtype = FM_TYPE_ADLIB;
		arg->nvoices = MAX_OPL2_VOICES;
	} else {
		arg->subtype = FM_TYPE_OPL3;
		arg->nvoices = MAX_OPL3_VOICES;
	}
	arg->oper = oss_callback;
	arg->private_data = opl3;

	if (FUNC2(opl3)) {
		/* register to OSS synth table */
		FUNC1(opl3->card, dev);
	}
}