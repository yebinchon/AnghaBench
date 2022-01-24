#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ X_add_symbol; int X_add_number; } ;
struct TYPE_4__ {int pc_rel; int /*<<< orphan*/  type; TYPE_2__ exp; } ;
struct TYPE_6__ {TYPE_1__ reloc; void* error; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_SCORE16_JMP ; 
 scalar_t__ FAIL ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 TYPE_3__ inst ; 
 int FUNC2 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *str)
{
  FUNC3 (str);
  if (FUNC2 (&inst.reloc.exp, &str) == (int) FAIL
      || FUNC1 (str) == (int) FAIL)
    {
      return;
    }
  else if (inst.reloc.exp.X_add_symbol == 0)
    {
      inst.error = FUNC0("lacking label  ");
      return;
    }
  else if (((inst.reloc.exp.X_add_number & 0xfffff800) != 0)
           && ((inst.reloc.exp.X_add_number & 0xfffff800) != 0xfffff800))
    {
      inst.error = FUNC0("invalid constant: 12 bit expression not in range -2^11..2^11");
      return;
    }

  inst.reloc.type = BFD_RELOC_SCORE16_JMP;
  inst.reloc.pc_rel = 1;
}