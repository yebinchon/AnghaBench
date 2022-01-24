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
typedef  int u32 ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int,int) ; 

int FUNC1(struct snd_emu10k1 * emu, u32 dst, u32 src)
{
	FUNC0(emu, 0x00, ((dst >> 8) & 0x3f) );
	FUNC0(emu, 0x01, (dst & 0x3f) );
	FUNC0(emu, 0x02, ((src >> 8) & 0x3f) );
	FUNC0(emu, 0x03, (src & 0x3f) );

	return 0;
}