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
struct snd_soc_codec {int /*<<< orphan*/  ac97; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 TYPE_1__ soc_ac97_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* wm9705_reg ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec)
{
	if (soc_ac97_ops.reset) {
		soc_ac97_ops.reset(codec->ac97);
		if (FUNC0(codec, 0) == wm9705_reg[0])
			return 0; /* Success */
	}

	return -EIO;
}