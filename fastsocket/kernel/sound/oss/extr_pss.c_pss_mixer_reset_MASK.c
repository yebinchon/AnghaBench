#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int volume_l; int volume_r; int bass; int treble; int synth; } ;
struct TYPE_10__ {TYPE_1__ mixer; } ;
typedef  TYPE_2__ pss_confdata ;

/* Variables and functions */
 scalar_t__ pss_mixer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC5(pss_confdata *devc)
{
	FUNC2(devc, 33, 33);
	FUNC1(devc, 50);
	FUNC4(devc, 50);
	FUNC3(devc, 30);
	FUNC0 (devc, 0x0010);
	FUNC0 (devc, 0x0800 | 0xce);	/* Stereo */
	
	if(pss_mixer)
	{
		devc->mixer.volume_l = devc->mixer.volume_r = 33;
		devc->mixer.bass = 50;
		devc->mixer.treble = 50;
		devc->mixer.synth = 30;
	}
}