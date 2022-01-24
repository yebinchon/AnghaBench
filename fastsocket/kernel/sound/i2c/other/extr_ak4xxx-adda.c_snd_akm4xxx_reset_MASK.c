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
struct snd_akm4xxx {int type; } ;

/* Variables and functions */
#define  SND_AK4355 133 
#define  SND_AK4358 132 
#define  SND_AK4381 131 
#define  SND_AK4524 130 
#define  SND_AK4528 129 
#define  SND_AK4529 128 
 int /*<<< orphan*/  FUNC0 (struct snd_akm4xxx*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_akm4xxx*,int) ; 

void FUNC3(struct snd_akm4xxx *ak, int state)
{
	switch (ak->type) {
	case SND_AK4524:
	case SND_AK4528:
		FUNC2(ak, state);
		break;
	case SND_AK4529:
		/* FIXME: needed for ak4529? */
		break;
	case SND_AK4355:
		FUNC0(ak, state, 0x0b);
		break;
	case SND_AK4358:
		FUNC0(ak, state, 0x10);
		break;
	case SND_AK4381:
		FUNC1(ak, state);
		break;
	default:
		break;
	}
}