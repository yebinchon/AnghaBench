#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int bits; } ;
typedef  TYPE_1__ sb_devc ;
struct TYPE_4__ {TYPE_1__* devc; } ;

/* Variables and functions */
 unsigned int AFMT_S16_LE ; 
 unsigned int AFMT_U8 ; 
 TYPE_2__** audio_devs ; 

__attribute__((used)) static unsigned int FUNC0(int dev, unsigned int bits)
{
	sb_devc *devc = audio_devs[dev]->devc;

	if (bits != 0)
	{
		if (bits == AFMT_U8 || bits == AFMT_S16_LE)
			devc->bits = bits;
		else
			devc->bits = AFMT_U8;
	}

	return devc->bits;
}