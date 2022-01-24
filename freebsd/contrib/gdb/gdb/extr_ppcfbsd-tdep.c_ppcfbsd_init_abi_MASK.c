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
struct gdbarch_tdep {int wordsize; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  ppc64_fbsd_convert_from_func_ptr_addr ; 
 int /*<<< orphan*/  ppc64_fbsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  ppc64_skip_trampoline_code ; 
 int /*<<< orphan*/  ppcfbsd_pc_in_sigtramp ; 
 int /*<<< orphan*/  ppcfbsd_regset_from_core_section ; 
 int /*<<< orphan*/  ppcfbsd_return_value ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svr4_ilp32_fetch_link_map_offsets ; 
 int /*<<< orphan*/  svr4_lp64_fetch_link_map_offsets ; 

__attribute__((used)) static void
FUNC8 (struct gdbarch_info info,
                  struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  /* FreeBSD doesn't support the 128-bit `long double' from the psABI. */
  FUNC2 (gdbarch, 64);

  if (tdep->wordsize == 4)
    {
      FUNC3 (gdbarch, ppcfbsd_pc_in_sigtramp);
      FUNC5 (gdbarch, ppcfbsd_return_value);
      FUNC7 (gdbarch,
					     svr4_ilp32_fetch_link_map_offsets);
    }

  if (tdep->wordsize == 8)
    {
      FUNC3 (gdbarch, ppc64_fbsd_pc_in_sigtramp);
      FUNC1
        (gdbarch, ppc64_fbsd_convert_from_func_ptr_addr);

      FUNC6 (gdbarch, ppc64_skip_trampoline_code);

      FUNC7 (gdbarch,
					     svr4_lp64_fetch_link_map_offsets);
    }

  FUNC4 (gdbarch,
					ppcfbsd_regset_from_core_section);
}