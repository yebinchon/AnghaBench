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
struct snd_sb_csp {int running; int /*<<< orphan*/ * csp_programs; } ;
struct snd_hwdep {struct snd_sb_csp* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int SNDRV_SB_CSP_ST_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb_csp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sb_csp*) ; 

__attribute__((used)) static void FUNC4(struct snd_hwdep *hwdep)
{
	int i;
	struct snd_sb_csp *p = hwdep->private_data;
	if (p) {
		if (p->running & SNDRV_SB_CSP_ST_RUNNING)
			FUNC3(p);
		for (i = 0; i < FUNC0(p->csp_programs); ++i)
			FUNC2(p->csp_programs[i]);
		FUNC1(p);
	}
}