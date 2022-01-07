
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* dis_hash ) (char const*,int ) ;int ** dis_hash_table; } ;
typedef int CGEN_INSN_LIST ;
typedef int CGEN_INSN_INT ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int build_dis_hash_table (TYPE_1__*) ;
 unsigned int stub1 (char const*,int ) ;

CGEN_INSN_LIST *
cgen_dis_lookup_insn (CGEN_CPU_DESC cd, const char * buf, CGEN_INSN_INT value)
{
  unsigned int hash;

  if (cd->dis_hash_table == ((void*)0))
    build_dis_hash_table (cd);

  hash = (* cd->dis_hash) (buf, value);

  return cd->dis_hash_table[hash];
}
