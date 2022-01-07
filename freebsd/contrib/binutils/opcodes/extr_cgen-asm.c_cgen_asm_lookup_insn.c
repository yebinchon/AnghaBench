
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* asm_hash ) (char const*) ;int ** asm_hash_table; } ;
typedef int CGEN_INSN_LIST ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int build_asm_hash_table (TYPE_1__*) ;
 unsigned int stub1 (char const*) ;

CGEN_INSN_LIST *
cgen_asm_lookup_insn (CGEN_CPU_DESC cd, const char *insn)
{
  unsigned int hash;

  if (cd->asm_hash_table == ((void*)0))
    build_asm_hash_table (cd);

  hash = (* cd->asm_hash) (insn);
  return cd->asm_hash_table[hash];
}
