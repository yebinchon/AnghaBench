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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_codec {int /*<<< orphan*/  (* hw_read ) (struct snd_soc_codec*,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int) ; 
 int /*<<< orphan*/  wm8903_reg_defaults ; 

__attribute__((used)) static void FUNC2(struct snd_soc_codec *codec, u16 *cache)
{
	int i;

	/* There really ought to be something better we can do here :/ */
	for (i = 0; i < FUNC0(wm8903_reg_defaults); i++)
		cache[i] = codec->hw_read(codec, i);
}