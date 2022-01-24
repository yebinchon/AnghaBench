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
 int /*<<< orphan*/  alpha_mdebug_frame_base_sniffer ; 
 int /*<<< orphan*/  alpha_mdebug_frame_sniffer ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC2 (struct gdbarch*) ; 

void
FUNC3 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC2 (gdbarch);

  FUNC1 (gdbarch, alpha_mdebug_frame_sniffer);
  FUNC0 (gdbarch, alpha_mdebug_frame_base_sniffer);
}