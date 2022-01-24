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
struct snd_pcm_substream {int dummy; } ;
struct cmipci {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CAPTURE_SPDF ; 
 int /*<<< orphan*/  CM_REG_FUNCTRL1 ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int /*<<< orphan*/  CM_SPD32SEL ; 
 int /*<<< orphan*/  FUNC0 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 struct cmipci* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *subs)
{
	struct cmipci *cm = FUNC2(subs);

	FUNC3(&cm->reg_lock);
	FUNC0(cm, CM_REG_FUNCTRL1, CM_CAPTURE_SPDF);
	FUNC0(cm, CM_REG_MISC_CTRL, CM_SPD32SEL);
	FUNC4(&cm->reg_lock);

	return FUNC1(subs);
}