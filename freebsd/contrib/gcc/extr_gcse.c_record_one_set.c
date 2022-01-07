
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_set {struct reg_set* next; int bb_index; } ;
typedef int rtx ;


 int BLOCK_NUM (int ) ;
 int REG_SET_TABLE_SLOP ;
 int bytes_used ;
 struct reg_set** grealloc (struct reg_set**,int) ;
 int memset (struct reg_set**,int ,int) ;
 struct reg_set* obstack_alloc (int *,int) ;
 int reg_set_obstack ;
 struct reg_set** reg_set_table ;
 int reg_set_table_size ;

__attribute__((used)) static void
record_one_set (int regno, rtx insn)
{

  struct reg_set *new_reg_info;


  if (regno >= reg_set_table_size)
    {
      int new_size = regno + REG_SET_TABLE_SLOP;

      reg_set_table = grealloc (reg_set_table,
    new_size * sizeof (struct reg_set *));
      memset (reg_set_table + reg_set_table_size, 0,
       (new_size - reg_set_table_size) * sizeof (struct reg_set *));
      reg_set_table_size = new_size;
    }

  new_reg_info = obstack_alloc (&reg_set_obstack, sizeof (struct reg_set));
  bytes_used += sizeof (struct reg_set);
  new_reg_info->bb_index = BLOCK_NUM (insn);
  new_reg_info->next = reg_set_table[regno];
  reg_set_table[regno] = new_reg_info;
}
