
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct spu_opcode {char* mnemonic; int* arg; int opcode; } ;
struct spu_insn {int* reloc_arg; int* flag; int tag; TYPE_6__* exp; int opcode; } ;
struct TYPE_8__ {size_t arg_format; scalar_t__ insn_tag; } ;
struct TYPE_9__ {TYPE_1__ tc_fix_data; } ;
typedef TYPE_2__ fixS ;
typedef enum spu_insns { ____Placeholder_spu_insns } spu_insns ;
typedef scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_12__ {scalar_t__ reloc; } ;
struct TYPE_11__ {int X_op; scalar_t__ X_add_number; scalar_t__ X_op_symbol; scalar_t__ X_add_symbol; } ;
struct TYPE_10__ {int fr_literal; } ;


 int A_P ;
 scalar_t__ BFD_RELOC_SPU_HI16 ;
 scalar_t__ BFD_RELOC_SPU_LO16 ;
 scalar_t__ BFD_RELOC_SPU_PCREL16 ;
 scalar_t__ BFD_RELOC_SPU_PCREL9a ;
 scalar_t__ BFD_RELOC_SPU_PCREL9b ;
 int ISSPACE (char) ;
 int MAX_RELOCS ;
 scalar_t__ M_RCHCNT ;
 scalar_t__ M_RDCH ;
 scalar_t__ M_WRCH ;
 int O_illegal ;
 int _ (char*) ;
 TYPE_7__* arg_encode ;
 int as_bad (int ,char*) ;
 int as_fatal (int ,int,int ) ;
 int as_warn (int ,...) ;
 int assert (char*) ;
 scalar_t__ calcop (struct spu_opcode*,char*,struct spu_insn*) ;
 int dwarf2_emit_insn (int) ;
 TYPE_2__* fix_new_exp (TYPE_3__*,char*,int,TYPE_6__*,int,scalar_t__) ;
 char* frag_more (int) ;
 TYPE_3__* frag_now ;
 scalar_t__ hash_find (int ,char*) ;
 int insn_fmt_string (struct spu_opcode*) ;
 int md_number_to_chars (char*,int ,int) ;
 int op_hash ;
 struct spu_opcode* spu_opcodes ;
 scalar_t__ strcmp (char*,char*) ;
 int syntax_error_arg ;
 char const* syntax_error_param ;
 int syntax_reg ;
 int use_dd2 ;

void
md_assemble (char *op)
{
  char *param, *thisfrag;
  char c;
  struct spu_opcode *format;
  struct spu_insn insn;
  int i;

  assert (op);



  for (param = op; *param != 0 && !ISSPACE (*param); param++)
    ;
  c = *param;
  *param = 0;

  if (c != 0 && c != '\n')
    param++;



  if ((format = (struct spu_opcode *) hash_find (op_hash, op)) == ((void*)0))
    {
      as_bad (_("Invalid mnemonic '%s'"), op);
      return;
    }

  if (!use_dd2 && strcmp (format->mnemonic, "orx") == 0)
    {
      as_bad (_("'%s' is only available in DD2.0 or higher."), op);
      return;
    }

  while (1)
    {

      for (i = 0; i < MAX_RELOCS; i++)
 {
   insn.exp[i].X_add_symbol = 0;
   insn.exp[i].X_op_symbol = 0;
   insn.exp[i].X_add_number = 0;
   insn.exp[i].X_op = O_illegal;
   insn.reloc_arg[i] = -1;
   insn.flag[i] = 0;
 }
      insn.opcode = format->opcode;
      insn.tag = (enum spu_insns) (format - spu_opcodes);

      syntax_error_arg = 0;
      syntax_error_param = 0;
      syntax_reg = 0;
      if (calcop (format, param, &insn))
 break;


      if (!strcmp (format[0].mnemonic, format[1].mnemonic))
 format++;
      else
 {
   int parg = format[0].arg[syntax_error_arg-1];

   as_fatal (_("Error in argument %d.  Expecting:  \"%s\""),
      syntax_error_arg - (parg == A_P),
      insn_fmt_string (format));
   return;
 }
    }

  if ((syntax_reg & 4)
      && ! (insn.tag == M_RDCH
     || insn.tag == M_RCHCNT
     || insn.tag == M_WRCH))
    as_warn (_("Mixing register syntax, with and without '$'."));
  if (syntax_error_param)
    {
      const char *d = syntax_error_param;
      while (*d != '$')
 d--;
      as_warn (_("Treating '%-*s' as a symbol."), (int)(syntax_error_param - d), d);
    }



  thisfrag = frag_more (4);
  md_number_to_chars (thisfrag, insn.opcode, 4);



  for (i = 0; i < MAX_RELOCS; i++)
    if (insn.reloc_arg[i] >= 0)
      {
        fixS *fixP;
        bfd_reloc_code_real_type reloc = arg_encode[insn.reloc_arg[i]].reloc;
 int pcrel = 0;

        if (reloc == BFD_RELOC_SPU_PCREL9a
     || reloc == BFD_RELOC_SPU_PCREL9b
            || reloc == BFD_RELOC_SPU_PCREL16)
   pcrel = 1;
 if (insn.flag[i] == 1)
   reloc = BFD_RELOC_SPU_HI16;
 else if (insn.flag[i] == 2)
   reloc = BFD_RELOC_SPU_LO16;
 fixP = fix_new_exp (frag_now,
       thisfrag - frag_now->fr_literal,
       4,
       &insn.exp[i],
       pcrel,
       reloc);
 fixP->tc_fix_data.arg_format = insn.reloc_arg[i];
 fixP->tc_fix_data.insn_tag = insn.tag;
      }
  dwarf2_emit_insn (4);
}
