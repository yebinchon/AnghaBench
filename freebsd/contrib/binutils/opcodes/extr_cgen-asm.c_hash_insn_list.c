
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int (* asm_hash ) (int ) ;int (* asm_hash_p ) (int ) ;} ;
struct TYPE_8__ {int insn; struct TYPE_8__* next; } ;
typedef TYPE_1__ CGEN_INSN_LIST ;
typedef TYPE_2__* CGEN_CPU_DESC ;


 int CGEN_INSN_MNEMONIC (int ) ;
 int stub1 (int ) ;
 unsigned int stub2 (int ) ;

__attribute__((used)) static CGEN_INSN_LIST *
hash_insn_list (CGEN_CPU_DESC cd,
  const CGEN_INSN_LIST *insns,
  CGEN_INSN_LIST **htable,
  CGEN_INSN_LIST *hentbuf)
{
  const CGEN_INSN_LIST *ilist;

  for (ilist = insns; ilist != ((void*)0); ilist = ilist->next, ++ hentbuf)
    {
      unsigned int hash;

      if (! (* cd->asm_hash_p) (ilist->insn))
 continue;
      hash = (* cd->asm_hash) (CGEN_INSN_MNEMONIC (ilist->insn));
      hentbuf->next = htable[hash];
      hentbuf->insn = ilist->insn;
      htable[hash] = hentbuf;
    }

  return hentbuf;
}
