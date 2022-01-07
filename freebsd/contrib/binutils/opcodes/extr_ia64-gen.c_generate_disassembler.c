
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct main_entry {int completers; int main_index; TYPE_1__* opcode; } ;
struct TYPE_2__ {scalar_t__ type; int mask; int opcode; } ;


 scalar_t__ IA64_TYPE_DYN ;
 int add_dis_entry (int ,int ,int ,int ,int ,int) ;
 int bittree ;
 int compact_distree (int ) ;
 int finish_distable () ;
 int gen_dis_table (int ) ;
 int make_bittree_entry () ;
 struct main_entry** ordered_table ;
 int otlen ;
 int print_dis_table () ;

__attribute__((used)) static void
generate_disassembler (void)
{
  int i;

  bittree = make_bittree_entry ();

  for (i = 0; i < otlen; i++)
    {
      struct main_entry *ptr = ordered_table[i];

      if (ptr->opcode->type != IA64_TYPE_DYN)
 add_dis_entry (bittree,
         ptr->opcode->opcode, ptr->opcode->mask,
         ptr->main_index,
         ptr->completers, 1);
    }

  compact_distree (bittree);
  finish_distable ();
  gen_dis_table (bittree);

  print_dis_table ();
}
