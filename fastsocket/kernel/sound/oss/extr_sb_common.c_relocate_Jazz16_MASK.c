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
struct address_info {int io_base; } ;
typedef  int /*<<< orphan*/  sb_devc ;

/* Variables and functions */
 int jazz16_base ; 
 unsigned char jazz16_bits ; 
 int /*<<< orphan*/  jazz16_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(sb_devc * devc, struct address_info *hw_config)
{
	unsigned char bits = 0;
	unsigned long flags;

	if (jazz16_base != 0 && jazz16_base != hw_config->io_base)
		return;

	switch (hw_config->io_base)
	{
		case 0x220:
			bits = 1;
			break;
		case 0x240:
			bits = 2;
			break;
		case 0x260:
			bits = 3;
			break;
		default:
			return;
	}
	bits = jazz16_bits = bits << 5;
	jazz16_base = hw_config->io_base;

	/*
	 *	Magic wake up sequence by writing to 0x201 (aka Joystick port)
	 */
	FUNC1(&jazz16_lock, flags);
	FUNC0((0xAF), 0x201);
	FUNC0((0x50), 0x201);
	FUNC0((bits), 0x201);
	FUNC2(&jazz16_lock, flags);
}