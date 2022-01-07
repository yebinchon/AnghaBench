
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_12__ {unsigned int (* dis_hash ) (char*,unsigned long) ;int (* dis_hash_p ) (int ) ;} ;
struct TYPE_11__ {int insn; struct TYPE_11__* next; } ;
typedef TYPE_1__ CGEN_INSN_LIST ;
typedef TYPE_2__* CGEN_CPU_DESC ;


 scalar_t__ CGEN_CPU_ENDIAN (TYPE_2__*) ;
 scalar_t__ CGEN_ENDIAN_BIG ;
 unsigned long CGEN_INSN_BASE_VALUE (int ) ;
 int CGEN_INSN_MASK_BITSIZE (int ) ;
 int add_insn_to_hash_chain (TYPE_1__*,int ,TYPE_1__**,unsigned int) ;
 int bfd_put_bits (int ,char*,int ,int) ;
 int stub1 (int ) ;
 unsigned int stub2 (char*,unsigned long) ;

__attribute__((used)) static CGEN_INSN_LIST *
hash_insn_list (CGEN_CPU_DESC cd,
  const CGEN_INSN_LIST *insns,
  CGEN_INSN_LIST **htable,
  CGEN_INSN_LIST *hentbuf)
{
  int big_p = CGEN_CPU_ENDIAN (cd) == CGEN_ENDIAN_BIG;
  const CGEN_INSN_LIST *ilist;

  for (ilist = insns; ilist != ((void*)0); ilist = ilist->next, ++ hentbuf)
    {
      unsigned int hash;
      char buf[4];
      unsigned long value;

      if (! (* cd->dis_hash_p) (ilist->insn))
 continue;




      value = CGEN_INSN_BASE_VALUE (ilist->insn);
      bfd_put_bits((bfd_vma) value,
     buf,
     CGEN_INSN_MASK_BITSIZE (ilist->insn),
     big_p);
      hash = (* cd->dis_hash) (buf, value);
      add_insn_to_hash_chain (hentbuf, ilist->insn, htable, hash);
    }

  return hentbuf;
}
