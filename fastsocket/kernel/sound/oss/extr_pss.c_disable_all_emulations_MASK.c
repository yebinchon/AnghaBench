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

/* Variables and functions */
 int /*<<< orphan*/  CONF_CDROM ; 
 int /*<<< orphan*/  CONF_MIDI ; 
 int /*<<< orphan*/  CONF_PSS ; 
 int /*<<< orphan*/  CONF_SB ; 
 int /*<<< orphan*/  CONF_WSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(0x0000, FUNC0(CONF_PSS));	/* 0x0400 enables joystick */
	FUNC1(0x0000, FUNC0(CONF_WSS));
	FUNC1(0x0000, FUNC0(CONF_SB));
	FUNC1(0x0000, FUNC0(CONF_MIDI));
	FUNC1(0x0000, FUNC0(CONF_CDROM));
}