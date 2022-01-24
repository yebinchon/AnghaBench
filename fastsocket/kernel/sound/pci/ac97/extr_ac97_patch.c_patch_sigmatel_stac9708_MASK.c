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
struct snd_ac97 {int caps; int /*<<< orphan*/ * build_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SIGMATEL_ANALOG ; 
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS1 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_BIAS2 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_CIC1 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_CIC2 ; 
 int /*<<< orphan*/  AC97_SIGMATEL_DAC2INVERT ; 
 int /*<<< orphan*/  AC97_SIGMATEL_MULTICHN ; 
 int /*<<< orphan*/  patch_sigmatel_stac9708_ops ; 
 int FUNC0 (struct snd_ac97*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 * ac97)
{
	unsigned int codec72, codec6c;

	ac97->build_ops = &patch_sigmatel_stac9708_ops;
	ac97->caps |= 0x10;	/* HP (sigmatel surround) support */

	codec72 = FUNC0(ac97, AC97_SIGMATEL_BIAS2) & 0x8000;
	codec6c = FUNC0(ac97, AC97_SIGMATEL_ANALOG);

	if ((codec72==0) && (codec6c==0)) {
		FUNC1(ac97, AC97_SIGMATEL_CIC1, 0xabba);
		FUNC1(ac97, AC97_SIGMATEL_CIC2, 0x1000);
		FUNC1(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
		FUNC1(ac97, AC97_SIGMATEL_BIAS2, 0x0007);
	} else if ((codec72==0x8000) && (codec6c==0)) {
		FUNC1(ac97, AC97_SIGMATEL_CIC1, 0xabba);
		FUNC1(ac97, AC97_SIGMATEL_CIC2, 0x1001);
		FUNC1(ac97, AC97_SIGMATEL_DAC2INVERT, 0x0008);
	} else if ((codec72==0x8000) && (codec6c==0x0080)) {
		/* nothing */
	}
	FUNC1(ac97, AC97_SIGMATEL_MULTICHN, 0x0000);
	return 0;
}