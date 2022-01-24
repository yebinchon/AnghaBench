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
struct regset {int dummy; } ;
struct gdbarch_tdep {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 size_t SIZEOF_STRUCT_FPREG ; 
 size_t SIZEOF_STRUCT_REG ; 
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 struct regset const ppcfbsd_fpregset ; 
 struct regset const ppcfbsd_gregset ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

const struct regset *
FUNC2 (struct gdbarch *gdbarch,
				const char *sect_name, size_t sect_size)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  if (FUNC1 (sect_name, ".reg") == 0 && sect_size >= SIZEOF_STRUCT_REG)
    return &ppcfbsd_gregset;

  if (FUNC1 (sect_name, ".reg2") == 0 && sect_size >= SIZEOF_STRUCT_FPREG)
    return &ppcfbsd_fpregset;

  return NULL;
}