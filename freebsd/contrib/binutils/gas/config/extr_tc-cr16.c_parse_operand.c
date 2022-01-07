
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* arg; } ;
typedef TYPE_1__ ins ;
struct TYPE_6__ {int cc; int r; int rp; int pr; int prp; scalar_t__ constant; int type; void* X_op; } ;
typedef TYPE_2__ argument ;


 scalar_t__ IS_INSN_MNEMONIC (char*) ;
 void* O_register ;
 int arg_c ;
 int arg_cc ;
 int arg_cr ;
 int arg_crp ;
 int arg_ic ;
 int arg_icr ;
 int arg_idxr ;
 int arg_pr ;
 int arg_prp ;
 int arg_r ;
 int arg_rbase ;
 int arg_rp ;
 int cur_arg_num ;
 int get_cc (char*) ;
 int get_pregister (char*) ;
 int get_pregisterp (char*) ;
 int get_register (char*) ;
 int get_register_pair (char*) ;
 int nullargs ;
 int nullpregister ;
 int nullregister ;
 int set_operand (char*,TYPE_1__*) ;
 int * strchr (char*,char) ;

__attribute__((used)) static void
parse_operand (char *operand, ins * cr16_ins)
{
  int ret_val;
  argument *cur_arg = cr16_ins->arg + cur_arg_num;


  cur_arg->type = nullargs;


  if ((IS_INSN_MNEMONIC ("b")) && ((ret_val = get_cc (operand)) != -1))
    {
      cur_arg->type = arg_cc;
      cur_arg->cc = ret_val;
      cur_arg->X_op = O_register;
      return;
    }


  if ((ret_val = get_register (operand)) != nullregister)
    {
      cur_arg->type = arg_r;
      cur_arg->r = ret_val;
      cur_arg->X_op = 0;
      return;
    }


  if ((operand[0] == '(')
      && ((ret_val = get_register_pair (operand)) != nullregister))
    {
      cur_arg->type = arg_rp;
      cur_arg->rp = ret_val;
      cur_arg->X_op = O_register;
      return;
    }




  if (!(IS_INSN_MNEMONIC ("lprd") || (IS_INSN_MNEMONIC ("sprd")))
      && ((ret_val = get_pregister (operand)) != nullpregister))
    {
      cur_arg->type = arg_pr;
      cur_arg->pr = ret_val;
      cur_arg->X_op = O_register;
      return;
    }


  if ((ret_val = get_pregisterp (operand)) != nullpregister)
    {
      cur_arg->type = arg_prp;
      cur_arg->prp = ret_val;
      cur_arg->X_op = O_register;
      return;
    }


  switch (operand[0])
    {
    case '$':
      if (strchr (operand, '(') != ((void*)0))
 cur_arg->type = arg_icr;
      else
 cur_arg->type = arg_ic;
      goto set_params;
      break;

    case '(':
      cur_arg->type = arg_rbase;
      goto set_params;
      break;

    case '[':
      cur_arg->type = arg_idxr;
      goto set_params;
      break;

    default:
      break;
    }

  if (strchr (operand, '(') != ((void*)0))
    {
      if (strchr (operand, ',') != ((void*)0)
          && (strchr (operand, ',') > strchr (operand, '(')))
        cur_arg->type = arg_crp;
      else
        cur_arg->type = arg_cr;
    }
  else
    cur_arg->type = arg_c;


 set_params:
  cur_arg->constant = 0;
  set_operand (operand, cr16_ins);
}
