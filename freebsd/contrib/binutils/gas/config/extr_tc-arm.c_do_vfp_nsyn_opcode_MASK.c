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
struct asm_opcode {int tvalue; int avalue; int /*<<< orphan*/  (* aencode ) () ;int /*<<< orphan*/  (* tencode ) () ;int /*<<< orphan*/ * avariant; int /*<<< orphan*/ * tvariant; } ;
struct TYPE_2__ {int instruction; int cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BAD_FPU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  arm_ops_hsh ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_variant ; 
 struct asm_opcode* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__ inst ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ thumb_mode ; 

__attribute__((used)) static void
FUNC7 (const char *opname)
{
  const struct asm_opcode *opcode;
  
  opcode = FUNC4 (arm_ops_hsh, opname);

  if (!opcode)
    FUNC2 ();

  FUNC3 (!FUNC0 (cpu_variant,
                thumb_mode ? *opcode->tvariant : *opcode->avariant),
              FUNC1(BAD_FPU));

  if (thumb_mode)
    {
      inst.instruction = opcode->tvalue;
      opcode->tencode ();
    }
  else
    {
      inst.instruction = (inst.cond << 28) | opcode->avalue;
      opcode->aencode ();
    }
}