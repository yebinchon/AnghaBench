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
struct main_entry {struct main_entry* next; int /*<<< orphan*/  main_index; TYPE_3__* completers; TYPE_2__* opcode; TYPE_1__* name; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {int type; int num_outputs; int* operands; int flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  opcode; } ;
struct TYPE_4__ {int num; } ;

/* Variables and functions */
 struct main_entry* maintable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC2 (void)
{
  struct main_entry *ptr = maintable;
  int index = 0;

  FUNC1 ("static const struct ia64_main_table\nmain_table[] = {\n");
  while (ptr != NULL)
    {
      FUNC1 ("  { %d, %d, %d, 0x",
	      ptr->name->num,
	      ptr->opcode->type,
	      ptr->opcode->num_outputs);
      FUNC0 (stdout, ptr->opcode->opcode);
      FUNC1 ("ull, 0x");
      FUNC0 (stdout, ptr->opcode->mask);
      FUNC1 ("ull, { %d, %d, %d, %d, %d }, 0x%x, %d, },\n",
	      ptr->opcode->operands[0],
	      ptr->opcode->operands[1],
	      ptr->opcode->operands[2],
	      ptr->opcode->operands[3],
	      ptr->opcode->operands[4],
	      ptr->opcode->flags,
	      ptr->completers->num);

      ptr->main_index = index++;

      ptr = ptr->next;
    }
  FUNC1 ("};\n\n");
}