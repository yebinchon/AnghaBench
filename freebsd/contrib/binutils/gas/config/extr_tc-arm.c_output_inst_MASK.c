#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fr_literal; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  pc_rel; int /*<<< orphan*/  exp; } ;
struct TYPE_6__ {int size; TYPE_1__ reloc; int /*<<< orphan*/  instruction; scalar_t__ relax; scalar_t__ error; } ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_UNUSED ; 
 int INSN_SIZE ; 
 int THUMB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC4 (int) ; 
 TYPE_3__* frag_now ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ thumb_mode ; 

__attribute__((used)) static void
FUNC8 (const char * str)
{
  char * to = NULL;

  if (inst.error)
    {
      FUNC0 ("%s -- `%s'", inst.error, str);
      return;
    }
  if (inst.relax) {
      FUNC6();
      return;
  }
  if (inst.size == 0)
    return;

  to = FUNC4 (inst.size);

  if (thumb_mode && (inst.size > THUMB_SIZE))
    {
      FUNC1 (inst.size == (2 * THUMB_SIZE));
      FUNC7 (to, inst.instruction);
    }
  else if (inst.size > INSN_SIZE)
    {
      FUNC1 (inst.size == (2 * INSN_SIZE));
      FUNC5 (to, inst.instruction, INSN_SIZE);
      FUNC5 (to + INSN_SIZE, inst.instruction, INSN_SIZE);
    }
  else
    FUNC5 (to, inst.instruction, inst.size);

  if (inst.reloc.type != BFD_RELOC_UNUSED)
    FUNC3 (frag_now, to - frag_now->fr_literal,
		 inst.size, & inst.reloc.exp, inst.reloc.pc_rel,
		 inst.reloc.type);

  FUNC2 (inst.size);
}