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
typedef  int u8 ;
struct snd_usb_midi_out_endpoint {int dummy; } ;
typedef  int /*<<< orphan*/  finish_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_usb_midi_out_endpoint*,int const*,int) ; 

__attribute__((used)) static void FUNC1(struct snd_usb_midi_out_endpoint* ep)
{
	static const u8 finish_data[] = {
		/* switch to patch mode with last preset */
		0xf0,
		0x00, 0x20, 0x31,	/* Emagic */
		0x64,			/* Unitor8 */
		0x10,			/* patch switch command */
		0x00,			/* command version */
		0x7f,			/* to all boxes */
		0x40,			/* last preset in EEPROM */
		0xf7
	};
	FUNC0(ep, finish_data, sizeof(finish_data));
}