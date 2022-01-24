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
typedef  unsigned int u16 ;
struct snd_soc_codec {unsigned int* reg_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int WM8993_MAX_REGISTER ; 
 unsigned int FUNC1 (struct snd_soc_codec*,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct snd_soc_codec *codec,
				unsigned int reg)
{
	u16 *reg_cache = codec->reg_cache;

	FUNC0(reg > WM8993_MAX_REGISTER);

	if (FUNC2(reg))
		return FUNC1(codec, reg);
	else
		return reg_cache[reg];
}