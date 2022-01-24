#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ sm_games; } ;
struct TYPE_8__ {int sbmixnum; scalar_t__ model; int /*<<< orphan*/ * levels; TYPE_1__ sbmo; } ;
typedef  TYPE_2__ sb_devc ;

/* Variables and functions */
 scalar_t__ MDL_ESS ; 
 int /*<<< orphan*/  SOUND_MASK_MIC ; 
 int SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sb_default_levels ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smg_default_levels ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(sb_devc * devc)
{
	char name[32];
	int i;

	FUNC4(name, "SB_%d", devc->sbmixnum);

	if (devc->sbmo.sm_games)
		devc->levels = FUNC1(name, smg_default_levels, 1);
	else
		devc->levels = FUNC1(name, sb_default_levels, 1);

	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
		FUNC2(devc, i, devc->levels[i]);

	if (devc->model != MDL_ESS || !FUNC0 (devc)) {
		FUNC3(devc, SOUND_MASK_MIC);
	};
}