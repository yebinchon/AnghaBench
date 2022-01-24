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
 int FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  mips_software_single_step ; 
 int /*<<< orphan*/  mipsnbsd_cannot_fetch_register ; 
 int /*<<< orphan*/  mipsnbsd_cannot_store_register ; 
 int /*<<< orphan*/  mipsnbsd_get_longjmp_target ; 
 int /*<<< orphan*/  mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets ; 
 int /*<<< orphan*/  mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets ; 
 int /*<<< orphan*/  mipsnbsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct gdbarch_info info,
                   struct gdbarch *gdbarch)
{
  FUNC4 (gdbarch, mipsnbsd_pc_in_sigtramp);

  FUNC3 (gdbarch, mipsnbsd_get_longjmp_target);

  FUNC1 (gdbarch, mipsnbsd_cannot_fetch_register);
  FUNC2 (gdbarch, mipsnbsd_cannot_store_register);

  FUNC5 (gdbarch, mips_software_single_step);

  FUNC6 (gdbarch,
					 FUNC0 (gdbarch) == 32 ?
                            mipsnbsd_ilp32_solib_svr4_fetch_link_map_offsets :
			    mipsnbsd_lp64_solib_svr4_fetch_link_map_offsets);
}