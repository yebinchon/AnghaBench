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
struct TYPE_2__ {int /*<<< orphan*/  (* warm_reset ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__ soc_ac97_ops ; 
 scalar_t__ FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__* stac9766_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_codec *codec, int try_warm)
{
	if (try_warm && soc_ac97_ops.warm_reset) {
		soc_ac97_ops.warm_reset(codec->ac97);
		if (FUNC0(codec, 0) == stac9766_reg[0])
			return 1;
	}

	soc_ac97_ops.reset(codec->ac97);
	if (soc_ac97_ops.warm_reset)
		soc_ac97_ops.warm_reset(codec->ac97);
	if (FUNC0(codec, 0) != stac9766_reg[0])
		return -EIO;
	return 0;
}