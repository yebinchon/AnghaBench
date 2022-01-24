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
struct ac97_codec {int /*<<< orphan*/  (* codec_write ) (struct ac97_codec*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MODEM_ID ; 
 int /*<<< orphan*/  AC97_EXTEND_MODEM_STAT ; 
 int /*<<< orphan*/  AC97_PCBEEP_VOL ; 
 int /*<<< orphan*/  AC97_PHONE_VOL ; 
 int /*<<< orphan*/  AC97_POWER_CONTROL ; 
 int /*<<< orphan*/  AC97_RECORD_GAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ac97_codec * codec)
{
	codec->codec_write(codec, AC97_RECORD_GAIN, 0x00a0);
	codec->codec_write(codec, AC97_POWER_CONTROL, 0x0000);
	codec->codec_write(codec, AC97_EXTENDED_MODEM_ID, 0xDA00);
	codec->codec_write(codec, AC97_EXTEND_MODEM_STAT, 0x3810);
	codec->codec_write(codec, AC97_PHONE_VOL, 0x0808);
	codec->codec_write(codec, AC97_PCBEEP_VOL, 0x0808);

	return 0;
}