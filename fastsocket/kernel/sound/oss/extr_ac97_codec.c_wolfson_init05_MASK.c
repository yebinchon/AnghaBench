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
 int /*<<< orphan*/  AC97_WM97XX_FMIXER_VOL ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ac97_codec * codec)
{
	/* set front mixer volume */
	codec->codec_write(codec, AC97_WM97XX_FMIXER_VOL, 0x0808);
	return 0;
}