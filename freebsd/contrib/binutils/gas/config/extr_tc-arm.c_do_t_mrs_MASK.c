#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int imm; int reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PSR_c ; 
 int PSR_f ; 
 int PSR_s ; 
 int PSR_x ; 
 int SPSR_BIT ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arm_ext_v1 ; 
 int /*<<< orphan*/  arm_ext_v7m ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_variant ; 
 scalar_t__ FUNC3 () ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC4 (void)
{
  int flags;

  if (FUNC3 () == SUCCESS)
    return;

  flags = inst.operands[1].imm & (PSR_c|PSR_x|PSR_s|PSR_f|SPSR_BIT);
  if (flags == 0)
    {
      FUNC2 (!FUNC0 (cpu_variant, arm_ext_v7m),
		  FUNC1("selected processor does not support "
		    "requested special purpose register"));
    }
  else
    {
      FUNC2 (!FUNC0 (cpu_variant, arm_ext_v1),
		  FUNC1("selected processor does not support "
		    "requested special purpose register %x"));
      /* mrs only accepts CPSR/SPSR/CPSR_all/SPSR_all.  */
      FUNC2 ((flags & ~SPSR_BIT) != (PSR_c|PSR_f),
		  FUNC1("'CPSR' or 'SPSR' expected"));
    }
    
  inst.instruction |= inst.operands[0].reg << 8;
  inst.instruction |= (flags & SPSR_BIT) >> 2;
  inst.instruction |= inst.operands[1].imm & 0xff;
}