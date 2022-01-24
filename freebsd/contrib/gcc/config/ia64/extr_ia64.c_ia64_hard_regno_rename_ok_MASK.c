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
struct TYPE_2__ {int reg_fp; int reg_save_b0; int reg_save_pr; int reg_save_ar_pfs; int reg_save_ar_unat; int reg_save_ar_lc; int /*<<< orphan*/  n_output_regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__ current_frame_info ; 

int
FUNC3 (int from, int to)
{
  /* Don't clobber any of the registers we reserved for the prologue.  */
  if (to == current_frame_info.reg_fp
      || to == current_frame_info.reg_save_b0
      || to == current_frame_info.reg_save_pr
      || to == current_frame_info.reg_save_ar_pfs
      || to == current_frame_info.reg_save_ar_unat
      || to == current_frame_info.reg_save_ar_lc)
    return 0;

  if (from == current_frame_info.reg_fp
      || from == current_frame_info.reg_save_b0
      || from == current_frame_info.reg_save_pr
      || from == current_frame_info.reg_save_ar_pfs
      || from == current_frame_info.reg_save_ar_unat
      || from == current_frame_info.reg_save_ar_lc)
    return 0;

  /* Don't use output registers outside the register frame.  */
  if (FUNC1 (to) && to >= FUNC0 (current_frame_info.n_output_regs))
    return 0;

  /* Retain even/oddness on predicate register pairs.  */
  if (FUNC2 (from) && FUNC2 (to))
    return (from & 1) == (to & 1);

  return 1;
}