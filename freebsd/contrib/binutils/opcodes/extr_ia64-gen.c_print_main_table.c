
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct main_entry {struct main_entry* next; int main_index; TYPE_3__* completers; TYPE_2__* opcode; TYPE_1__* name; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {int type; int num_outputs; int* operands; int flags; int mask; int opcode; } ;
struct TYPE_4__ {int num; } ;


 struct main_entry* maintable ;
 int opcode_fprintf_vma (int ,int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void
print_main_table (void)
{
  struct main_entry *ptr = maintable;
  int index = 0;

  printf ("static const struct ia64_main_table\nmain_table[] = {\n");
  while (ptr != ((void*)0))
    {
      printf ("  { %d, %d, %d, 0x",
       ptr->name->num,
       ptr->opcode->type,
       ptr->opcode->num_outputs);
      opcode_fprintf_vma (stdout, ptr->opcode->opcode);
      printf ("ull, 0x");
      opcode_fprintf_vma (stdout, ptr->opcode->mask);
      printf ("ull, { %d, %d, %d, %d, %d }, 0x%x, %d, },\n",
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
  printf ("};\n\n");
}
