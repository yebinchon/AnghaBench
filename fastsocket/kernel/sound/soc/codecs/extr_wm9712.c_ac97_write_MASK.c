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
typedef  unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; int /*<<< orphan*/  ac97; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ soc_ac97_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  wm9712_reg ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec, unsigned int reg,
	unsigned int val)
{
	u16 *cache = codec->reg_cache;

	if (reg < 0x7c)
		soc_ac97_ops.write(codec->ac97, reg, val);
	reg = reg >> 1;
	if (reg < (FUNC0(wm9712_reg)))
		cache[reg] = val;

	return 0;
}