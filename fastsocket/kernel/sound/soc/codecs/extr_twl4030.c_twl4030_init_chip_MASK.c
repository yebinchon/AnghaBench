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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_codec {int /*<<< orphan*/ * reg_cache; } ;

/* Variables and functions */
 int TWL4030_REG_MISC_SET_2 ; 
 int TWL4030_REG_OPTION ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_codec *codec)
{
	u8 *cache = codec->reg_cache;
	int i;

	/* clear CODECPDZ prior to setting register defaults */
	FUNC0(codec, 0);

	/* set all audio section registers to reasonable defaults */
	for (i = TWL4030_REG_OPTION; i <= TWL4030_REG_MISC_SET_2; i++)
		FUNC1(codec, i,	cache[i]);

}