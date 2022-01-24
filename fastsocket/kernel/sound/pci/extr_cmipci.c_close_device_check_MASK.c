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
struct cmipci {int* opened; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; TYPE_1__* channel; } ;
struct TYPE_2__ {int is_dac; int /*<<< orphan*/ * substream; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ENDBDAC ; 
 int CM_OPEN_CH_MASK ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cmipci *cm, int mode)
{
	int ch = mode & CM_OPEN_CH_MASK;

	FUNC0(&cm->open_mutex);
	if (cm->opened[ch] == mode) {
		if (cm->channel[ch].substream) {
			FUNC2(cm, ch);
			cm->channel[ch].running = 0;
			cm->channel[ch].substream = NULL;
		}
		cm->opened[ch] = 0;
		if (! cm->channel[ch].is_dac) {
			/* enable dual DAC mode again */
			cm->channel[ch].is_dac = 1;
			FUNC4(&cm->reg_lock);
			FUNC3(cm, CM_REG_MISC_CTRL, CM_ENDBDAC);
			FUNC5(&cm->reg_lock);
		}
	}
	FUNC1(&cm->open_mutex);
}