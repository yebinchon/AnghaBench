
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int const* insn; } ;
typedef TYPE_1__ CGEN_INSN_LIST ;
typedef int CGEN_INSN ;


 int count_decodable_bits (int const*) ;

__attribute__((used)) static void
add_insn_to_hash_chain (CGEN_INSN_LIST *hentbuf,
   const CGEN_INSN *insn,
   CGEN_INSN_LIST **htable,
   unsigned int hash)
{
  CGEN_INSN_LIST *current_buf;
  CGEN_INSN_LIST *previous_buf;
  int insn_decodable_bits;




  insn_decodable_bits = count_decodable_bits (insn);
  previous_buf = ((void*)0);
  for (current_buf = htable[hash]; current_buf != ((void*)0);
       current_buf = current_buf->next)
    {
      int current_decodable_bits = count_decodable_bits (current_buf->insn);
      if (insn_decodable_bits >= current_decodable_bits)
 break;
      previous_buf = current_buf;
    }


  hentbuf->insn = insn;
  hentbuf->next = current_buf;
  if (previous_buf == ((void*)0))
    htable[hash] = hentbuf;
  else
    previous_buf->next = hentbuf;
}
