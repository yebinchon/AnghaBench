
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int new_entries; int entry_size; scalar_t__ num_init_entries; scalar_t__ init_entries; } ;
struct TYPE_9__ {unsigned int asm_hash_size; int * asm_hash_table_entries; int ** asm_hash_table; TYPE_1__ macro_insn_table; TYPE_1__ insn_table; } ;
typedef TYPE_1__ CGEN_INSN_TABLE ;
typedef int CGEN_INSN_LIST ;
typedef TYPE_2__* CGEN_CPU_DESC ;


 int cgen_insn_count (TYPE_2__*) ;
 int cgen_macro_insn_count (TYPE_2__*) ;
 int * hash_insn_array (TYPE_2__*,scalar_t__,scalar_t__,int ,int **,int *) ;
 int * hash_insn_list (TYPE_2__*,int ,int **,int *) ;
 int memset (int **,int ,unsigned int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
build_asm_hash_table (CGEN_CPU_DESC cd)
{
  int count = cgen_insn_count (cd) + cgen_macro_insn_count (cd);
  CGEN_INSN_TABLE *insn_table = &cd->insn_table;
  CGEN_INSN_TABLE *macro_insn_table = &cd->macro_insn_table;
  unsigned int hash_size = cd->asm_hash_size;
  CGEN_INSN_LIST *hash_entry_buf;
  CGEN_INSN_LIST **asm_hash_table;
  CGEN_INSN_LIST *asm_hash_table_entries;




  asm_hash_table = (CGEN_INSN_LIST **)
    xmalloc (hash_size * sizeof (CGEN_INSN_LIST *));
  memset (asm_hash_table, 0, hash_size * sizeof (CGEN_INSN_LIST *));
  asm_hash_table_entries = hash_entry_buf = (CGEN_INSN_LIST *)
    xmalloc (count * sizeof (CGEN_INSN_LIST));






  hash_entry_buf = hash_insn_array (cd,
        insn_table->init_entries + 1,
        insn_table->num_init_entries - 1,
        insn_table->entry_size,
        asm_hash_table, hash_entry_buf);



  hash_entry_buf = hash_insn_array (cd, macro_insn_table->init_entries,
        macro_insn_table->num_init_entries,
        macro_insn_table->entry_size,
        asm_hash_table, hash_entry_buf);




  hash_entry_buf = hash_insn_list (cd, insn_table->new_entries,
       asm_hash_table, hash_entry_buf);



  hash_insn_list (cd, macro_insn_table->new_entries,
    asm_hash_table, hash_entry_buf);

  cd->asm_hash_table = asm_hash_table;
  cd->asm_hash_table_entries = asm_hash_table_entries;
}
