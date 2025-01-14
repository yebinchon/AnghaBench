
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_9__ {int pc_relative; } ;
typedef TYPE_1__ reloc_howto_type ;
struct TYPE_10__ {scalar_t__ rtype; int exp; } ;
typedef TYPE_2__ ins ;
struct TYPE_12__ {int fr_literal; int has_code; int insn_addr; } ;
struct TYPE_11__ {unsigned int size; } ;


 scalar_t__ BFD_RELOC_NONE ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int bfd_get_reloc_size (TYPE_1__*) ;
 TYPE_1__* bfd_reloc_type_lookup (int ,scalar_t__) ;
 int fix_new_exp (TYPE_5__*,char*,int,int *,int ,scalar_t__) ;
 char* frag_more (unsigned int) ;
 TYPE_5__* frag_now ;
 int frag_now_fix () ;
 TYPE_4__* instruction ;
 int md_number_to_chars (char*,int ,int) ;
 int* output_opcode ;
 scalar_t__ relocatable ;
 int stdoutput ;

__attribute__((used)) static void
print_insn (ins *insn)
{
  unsigned int i, j, insn_size;
  char *this_frag;
  unsigned short words[4];
  int addr_mod;


  for (i = 0, j = 0; i < 2; i++)
    {
      words[j++] = (output_opcode[i] >> 16) & 0xFFFF;
      words[j++] = output_opcode[i] & 0xFFFF;
    }

    insn_size = instruction->size;
    this_frag = frag_more (insn_size * 2);


    if ((relocatable) && (insn->rtype != BFD_RELOC_NONE))
      {
         reloc_howto_type *reloc_howto;
         int size;

         reloc_howto = bfd_reloc_type_lookup (stdoutput, insn->rtype);

         if (!reloc_howto)
           abort ();

         size = bfd_get_reloc_size (reloc_howto);

         if (size < 1 || size > 4)
           abort ();

         fix_new_exp (frag_now, this_frag - frag_now->fr_literal,
                      size, &insn->exp, reloc_howto->pc_relative,
                      insn->rtype);
      }


  addr_mod = frag_now_fix () & 1;
  if (frag_now->has_code && frag_now->insn_addr != addr_mod)
    as_bad (_("instruction address is not a multiple of 2"));
  frag_now->insn_addr = addr_mod;
  frag_now->has_code = 1;


  for (i = 0; i < insn_size; i++)
    {
      md_number_to_chars (this_frag, (valueT) words[i], 2);
      this_frag += 2;
    }
}
