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
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct snd_akm4xxx*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_akm4xxx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_akm4xxx*,int,int,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct snd_akm4xxx *ak, unsigned int rate)
{
	unsigned char val;

	val = (rate > 48000) ? 0x65 : 0x60;
	if (FUNC0(ak, 0, 0x02) != val ||
	    FUNC0(ak, 1, 0x02) != val) {
		FUNC1(ak, 1);
		FUNC2(ak, 0, 0x02, val);
		FUNC2(ak, 1, 0x02, val);
		FUNC1(ak, 0);
	}
}