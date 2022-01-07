
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ offsetT ;
struct TYPE_6__ {TYPE_2__* frch_cfi_data; } ;
struct TYPE_5__ {TYPE_1__* cur_fde_data; scalar_t__ cur_cfa_offset; int last_address; } ;
struct TYPE_4__ {int signal_frame; } ;
 int SKIP_WHITESPACE () ;
 scalar_t__ S_GET_VALUE (int ) ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 int cfi_add_CFA_def_cfa (unsigned int,scalar_t__) ;
 int cfi_add_CFA_def_cfa_offset (scalar_t__) ;
 int cfi_add_CFA_def_cfa_register (unsigned int) ;
 int cfi_add_CFA_insn (int const) ;
 int cfi_add_CFA_offset (unsigned int,scalar_t__) ;
 int cfi_add_CFA_register (unsigned int,unsigned int) ;
 int cfi_add_CFA_remember_state () ;
 int cfi_add_CFA_restore (unsigned int) ;
 int cfi_add_CFA_restore_state () ;
 int cfi_add_CFA_same_value (unsigned int) ;
 int cfi_add_CFA_undefined (unsigned int) ;
 int cfi_add_advance_loc (int ) ;
 scalar_t__ cfi_parse_const () ;
 unsigned int cfi_parse_reg () ;
 int cfi_parse_separator () ;
 int cfi_set_return_column (unsigned int) ;
 int demand_empty_rest_of_line () ;
 scalar_t__ frag_now ;
 scalar_t__ frag_now_fix () ;
 TYPE_3__* frchain_now ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 scalar_t__ symbol_get_frag (int ) ;
 int symbol_temp_new_now () ;

__attribute__((used)) static void
dot_cfi (int arg)
{
  offsetT offset;
  unsigned reg1, reg2;

  if (frchain_now->frch_cfi_data == ((void*)0))
    {
      as_bad (_("CFI instruction used without previous .cfi_startproc"));
      ignore_rest_of_line ();
      return;
    }


  if (symbol_get_frag (frchain_now->frch_cfi_data->last_address) != frag_now
      || S_GET_VALUE (frchain_now->frch_cfi_data->last_address)
  != frag_now_fix ())
    cfi_add_advance_loc (symbol_temp_new_now ());

  switch (arg)
    {
    case 134:
      reg1 = cfi_parse_reg ();
      cfi_parse_separator ();
      offset = cfi_parse_const ();
      cfi_add_CFA_offset (reg1, offset);
      break;

    case 141:
      reg1 = cfi_parse_reg ();
      cfi_parse_separator ();
      offset = cfi_parse_const ();
      cfi_add_CFA_offset (reg1,
     offset - frchain_now->frch_cfi_data->cur_cfa_offset);
      break;

    case 137:
      reg1 = cfi_parse_reg ();
      cfi_parse_separator ();
      offset = cfi_parse_const ();
      cfi_add_CFA_def_cfa (reg1, offset);
      break;

    case 133:
      reg1 = cfi_parse_reg ();
      cfi_parse_separator ();
      reg2 = cfi_parse_reg ();
      cfi_add_CFA_register (reg1, reg2);
      break;

    case 135:
      reg1 = cfi_parse_reg ();
      cfi_add_CFA_def_cfa_register (reg1);
      break;

    case 136:
      offset = cfi_parse_const ();
      cfi_add_CFA_def_cfa_offset (offset);
      break;

    case 142:
      offset = cfi_parse_const ();
      cfi_add_CFA_def_cfa_offset (frchain_now->frch_cfi_data->cur_cfa_offset
      + offset);
      break;

    case 131:
      for (;;)
 {
   reg1 = cfi_parse_reg ();
   cfi_add_CFA_restore (reg1);
   SKIP_WHITESPACE ();
   if (*input_line_pointer != ',')
     break;
   ++input_line_pointer;
 }
      break;

    case 128:
      for (;;)
 {
   reg1 = cfi_parse_reg ();
   cfi_add_CFA_undefined (reg1);
   SKIP_WHITESPACE ();
   if (*input_line_pointer != ',')
     break;
   ++input_line_pointer;
 }
      break;

    case 129:
      reg1 = cfi_parse_reg ();
      cfi_add_CFA_same_value (reg1);
      break;

    case 140:
      reg1 = cfi_parse_reg ();
      cfi_set_return_column (reg1);
      break;

    case 132:
      cfi_add_CFA_remember_state ();
      break;

    case 130:
      cfi_add_CFA_restore_state ();
      break;

    case 138:
      cfi_add_CFA_insn (138);
      break;

    case 139:
      frchain_now->frch_cfi_data->cur_fde_data->signal_frame = 1;
      break;

    default:
      abort ();
    }

  demand_empty_rest_of_line ();
}
