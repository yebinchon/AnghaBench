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
struct TYPE_2__ {int /*<<< orphan*/  ioctl; } ;
struct snd_hwdep {TYPE_1__ ops; int /*<<< orphan*/  name; struct hdsp* private_data; } ;
struct snd_card {int dummy; } ;
struct hdsp {struct snd_hwdep* hwdep; } ;

/* Variables and functions */
 int /*<<< orphan*/  snd_hdsp_hwdep_ioctl ; 
 int FUNC0 (struct snd_card*,char*,int /*<<< orphan*/ ,struct snd_hwdep**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card, struct hdsp *hdsp)
{
	struct snd_hwdep *hw;
	int err;

	if ((err = FUNC0(card, "HDSP hwdep", 0, &hw)) < 0)
		return err;

	hdsp->hwdep = hw;
	hw->private_data = hdsp;
	FUNC1(hw->name, "HDSP hwdep interface");

	hw->ops.ioctl = snd_hdsp_hwdep_ioctl;

	return 0;
}