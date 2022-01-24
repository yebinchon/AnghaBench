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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch_info) ; 
 scalar_t__ mips64_transfers_32bit_regs_p ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty,
				 struct cmd_list_element *c)
{
  struct gdbarch_info info;
  FUNC1 (&info);
  /* FIXME: cagney/2003-11-15: Should be setting a field in "info"
     instead of relying on globals.  Doing that would let generic code
     handle the search for this specific architecture.  */
  if (!FUNC2 (info))
    {
      mips64_transfers_32bit_regs_p = 0;
      FUNC0 ("32-bit compatibility mode not supported");
    }
}