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
 int /*<<< orphan*/  generic_in_solib_call_trampoline ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svr4_ilp32_fetch_link_map_offsets ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  /* It's almost identical to FreeBSD a.out.  */
  FUNC1 (info, gdbarch);

  /* Except that it uses ELF.  */
  FUNC0 (info, gdbarch);

  /* FreeBSD ELF uses SVR4-style shared libraries.  */
  FUNC2
    (gdbarch, generic_in_solib_call_trampoline);
  FUNC3
    (gdbarch, svr4_ilp32_fetch_link_map_offsets);
}