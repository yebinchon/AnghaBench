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
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int IA64_FR0_REGNUM ; 
 int IA64_FR127_REGNUM ; 
 struct type* builtin_type_ia64_ext ; 
 struct type* builtin_type_long ; 

struct type *
FUNC0 (struct gdbarch *arch, int reg)
{
  if (reg >= IA64_FR0_REGNUM && reg <= IA64_FR127_REGNUM)
    return builtin_type_ia64_ext;
  else
    return builtin_type_long;
}