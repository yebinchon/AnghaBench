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
struct snd_sb {int mode; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  capture_substream; int /*<<< orphan*/  playback_substream; TYPE_1__* rmidi; int /*<<< orphan*/  (* rmidi_callback ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mixer_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SB_DSP4_IRQSTATUS ; 
 int /*<<< orphan*/  SB_DSP_DMA16_OFF ; 
 int /*<<< orphan*/  SB_DSP_DMA8_OFF ; 
 unsigned char SB_IRQTYPE_16BIT ; 
 unsigned char SB_IRQTYPE_8BIT ; 
 unsigned char SB_IRQTYPE_MPUIN ; 
 int SB_MODE_CAPTURE_16 ; 
 int SB_MODE_CAPTURE_8 ; 
 int SB_MODE_PLAYBACK_16 ; 
 int SB_MODE_PLAYBACK_8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (struct snd_sb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct snd_sb *chip = dev_id;
	unsigned char status;
	int ok;

	FUNC6(&chip->mixer_lock);
	status = FUNC5(chip, SB_DSP4_IRQSTATUS);
	FUNC7(&chip->mixer_lock);
	if ((status & SB_IRQTYPE_MPUIN) && chip->rmidi_callback)
		chip->rmidi_callback(irq, chip->rmidi->private_data);
	if (status & SB_IRQTYPE_8BIT) {
		ok = 0;
		if (chip->mode & SB_MODE_PLAYBACK_8) {
			FUNC0(chip->playback_substream);
			FUNC1(chip);
			ok++;
		}
		if (chip->mode & SB_MODE_CAPTURE_8) {
			FUNC0(chip->capture_substream);
			ok++;
		}
		FUNC6(&chip->reg_lock);
		if (!ok)
			FUNC4(chip, SB_DSP_DMA8_OFF);
		FUNC3(chip);
		FUNC7(&chip->reg_lock);
	}
	if (status & SB_IRQTYPE_16BIT) {
		ok = 0;
		if (chip->mode & SB_MODE_PLAYBACK_16) {
			FUNC0(chip->playback_substream);
			FUNC1(chip);
			ok++;
		}
		if (chip->mode & SB_MODE_CAPTURE_16) {
			FUNC0(chip->capture_substream);
			ok++;
		}
		FUNC6(&chip->reg_lock);
		if (!ok)
			FUNC4(chip, SB_DSP_DMA16_OFF);
		FUNC2(chip);
		FUNC7(&chip->reg_lock);
	}
	return IRQ_HANDLED;
}