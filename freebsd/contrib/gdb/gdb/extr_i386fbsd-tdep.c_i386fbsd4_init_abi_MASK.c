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
struct gdbarch_tdep {int sizeof_gregset; void* sc_num_regs; void* sc_reg_offset; void* gregset_num_regs; void* gregset_reg_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 struct gdbarch_tdep* FUNC1 (struct gdbarch*) ; 
 void* i386fbsd4_r_reg_offset ; 
 void* i386fbsd4_sc_reg_offset ; 
 int /*<<< orphan*/  FUNC2 (struct gdbarch_info,struct gdbarch*) ; 

__attribute__((used)) static void
FUNC3 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC1 (gdbarch);

  /* Inherit stuff from older releases.  We assume that FreeBSD
     4.0-RELEASE always uses ELF.  */
  FUNC2 (info, gdbarch);

  /* FreeBSD 4.0 introduced a new `struct reg'.  */
  tdep->gregset_reg_offset = i386fbsd4_r_reg_offset;
  tdep->gregset_num_regs = FUNC0 (i386fbsd4_r_reg_offset);
  tdep->sizeof_gregset = 19 * 4;

  /* FreeBSD 4.0 introduced a new `struct sigcontext'.  */
  tdep->sc_reg_offset = i386fbsd4_sc_reg_offset;
  tdep->sc_num_regs = FUNC0 (i386fbsd4_sc_reg_offset);
}