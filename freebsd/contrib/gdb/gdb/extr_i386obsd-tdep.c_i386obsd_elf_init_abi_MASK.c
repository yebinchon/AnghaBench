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
struct gdbarch_tdep {int dummy; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  generic_in_solib_call_trampoline ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svr4_ilp32_fetch_link_map_offsets ; 

__attribute__((used)) static void
FUNC5 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  /* It's still OpenBSD.  */
  FUNC2 (info, gdbarch);

  /* But ELF-based.  */
  FUNC1 (info, gdbarch);

  /* OpenBSD ELF uses SVR4-style shared libraries.  */
  FUNC3
    (gdbarch, generic_in_solib_call_trampoline);
  FUNC4
    (gdbarch, svr4_ilp32_fetch_link_map_offsets);
}