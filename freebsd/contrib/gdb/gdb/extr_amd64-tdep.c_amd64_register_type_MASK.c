#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int dummy; } ;
struct gdbarch {int dummy; } ;
struct TYPE_2__ {struct type** type; } ;

/* Variables and functions */
 int AMD64_NUM_REGS ; 
 TYPE_1__* amd64_register_info ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static struct type *
FUNC1 (struct gdbarch *gdbarch, int regnum)
{
  FUNC0 (regnum >= 0 && regnum < AMD64_NUM_REGS);

  return *amd64_register_info[regnum].type;
}