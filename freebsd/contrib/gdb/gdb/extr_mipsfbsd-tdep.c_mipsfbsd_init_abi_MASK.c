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
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_solib_trampoline_target ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_software_single_step ; 
 int /*<<< orphan*/  mipsfbsd_cannot_fetch_register ; 
 int /*<<< orphan*/  mipsfbsd_cannot_store_register ; 
 int /*<<< orphan*/  mipsfbsd_get_longjmp_target ; 
 int /*<<< orphan*/  mipsfbsd_ilp32_solib_svr4_fetch_link_map_offsets ; 
 int /*<<< orphan*/  mipsfbsd_in_stub_section ; 
 int /*<<< orphan*/  mipsfbsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  mipsfbsd_sigtramp_frame_sniffer ; 
 int /*<<< orphan*/  mipsfbsd_stub_frame_sniffer ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gdbarch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (struct gdbarch_info info,
                   struct gdbarch *gdbarch)
{
  FUNC5 (gdbarch, mipsfbsd_pc_in_sigtramp);

  FUNC3 (gdbarch, mipsfbsd_get_longjmp_target);

  FUNC1 (gdbarch, mipsfbsd_cannot_fetch_register);
  FUNC2 (gdbarch, mipsfbsd_cannot_store_register);

  FUNC7 (gdbarch, mips_software_single_step);
  FUNC8 (gdbarch,
      			    mipsfbsd_ilp32_solib_svr4_fetch_link_map_offsets);
  FUNC6 (gdbarch, find_solib_trampoline_target);
  FUNC4 (gdbarch, mipsfbsd_in_stub_section);

  /* frame sniffers */
  FUNC0 (gdbarch, mipsfbsd_sigtramp_frame_sniffer);
  FUNC0 (gdbarch, mipsfbsd_stub_frame_sniffer);

}