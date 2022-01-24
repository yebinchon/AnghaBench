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
typedef  int /*<<< orphan*/  lithium_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SOUND_MASK_CD ; 
 int SOUND_MASK_LINE ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_PCM ; 
 int /*<<< orphan*/  ad1843_LSS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(lithium_t *lith)
{
	int ls = FUNC1(lith, &ad1843_LSS);

	switch (ls) {
	case 1:
		return SOUND_MASK_MIC;
	case 2:
		return SOUND_MASK_LINE;
	case 3:
		return SOUND_MASK_CD;
	case 6:
		return SOUND_MASK_PCM;
	default:
		FUNC0(0);
		return -1;
	}
}