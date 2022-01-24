#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vgastate {int /*<<< orphan*/  vgabase; } ;
struct TYPE_2__ {int HorizontalTotal; int HorizDisplayEnd; int StartHorizRetrace; int EndHorizRetrace; int Overflow; int StartVertRetrace; int EndVertRetrace; int ModeControl; int CrtCtrlIndex; int /*<<< orphan*/  SeqCtrlIndex; int /*<<< orphan*/  ClockingMode; int /*<<< orphan*/  CrtMiscIO; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  VGA_SEQ_CLOCK_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_I ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vga_lock ; 
 TYPE_1__ vga_state ; 
 int /*<<< orphan*/  vga_video_port_reg ; 
 int /*<<< orphan*/  vga_video_port_val ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct vgastate *state)
{
	/* restore original values of VGA controller registers */
	FUNC1(&vga_lock);
	FUNC3(state->vgabase, VGA_MIS_W, vga_state.CrtMiscIO);

	FUNC0(0x00, vga_video_port_reg);	/* HorizontalTotal */
	FUNC0(vga_state.HorizontalTotal, vga_video_port_val);
	FUNC0(0x01, vga_video_port_reg);	/* HorizDisplayEnd */
	FUNC0(vga_state.HorizDisplayEnd, vga_video_port_val);
	FUNC0(0x04, vga_video_port_reg);	/* StartHorizRetrace */
	FUNC0(vga_state.StartHorizRetrace, vga_video_port_val);
	FUNC0(0x05, vga_video_port_reg);	/* EndHorizRetrace */
	FUNC0(vga_state.EndHorizRetrace, vga_video_port_val);
	FUNC0(0x07, vga_video_port_reg);	/* Overflow */
	FUNC0(vga_state.Overflow, vga_video_port_val);
	FUNC0(0x10, vga_video_port_reg);	/* StartVertRetrace */
	FUNC0(vga_state.StartVertRetrace, vga_video_port_val);
	FUNC0(0x11, vga_video_port_reg);	/* EndVertRetrace */
	FUNC0(vga_state.EndVertRetrace, vga_video_port_val);
	FUNC0(0x17, vga_video_port_reg);	/* ModeControl */
	FUNC0(vga_state.ModeControl, vga_video_port_val);
	/* ClockingMode */
	FUNC4(state->vgabase, VGA_SEQ_CLOCK_MODE, vga_state.ClockingMode);

	/* restore index/control registers */
	FUNC3(state->vgabase, VGA_SEQ_I, vga_state.SeqCtrlIndex);
	FUNC0(vga_state.CrtCtrlIndex, vga_video_port_reg);
	FUNC2(&vga_lock);
}