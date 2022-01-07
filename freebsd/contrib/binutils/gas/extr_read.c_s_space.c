
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int valueT ;
typedef int symbolS ;
typedef int relax_substateT ;
typedef scalar_t__ offsetT ;
struct TYPE_7__ {scalar_t__ X_op; int X_add_number; int * X_add_symbol; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_constant ;
 scalar_t__ O_symbol ;
 int SKIP_WHITESPACE () ;
 long S_GET_VALUE (int *) ;
 int S_SET_VALUE (int *,long) ;
 int _ (char*) ;
 int abs_section_offset ;
 scalar_t__ absolute_section ;
 int as_bad (int ) ;
 int as_warn (int ) ;
 int demand_empty_rest_of_line () ;
 int do_align (int,char*,int ,int ) ;
 int emit_expr (TYPE_1__*,int) ;
 int expression (TYPE_1__*) ;
 scalar_t__ flag_m68k_mri ;
 scalar_t__ flag_mri ;
 int frag_now ;
 long frag_now_fix () ;
 char* frag_var (int ,int,int,int ,int *,scalar_t__,char*) ;
 char* input_line_pointer ;
 int know (int) ;
 int * line_label ;
 int * make_expr_symbol (TYPE_1__*) ;
 int md_flush_pending_output () ;
 int mri_comment_end (char*,char) ;
 char* mri_comment_field (char*) ;
 int * mri_common_symbol ;
 int mri_pending_align ;
 int need_pass_2 ;
 scalar_t__ now_seg ;
 int resolve_expression (TYPE_1__*) ;
 int rs_fill ;
 int rs_space ;
 int subseg_set (int ,int ) ;
 TYPE_1__* symbol_get_value_expression (int *) ;
 int symbol_set_frag (int *,int ) ;
 int text_section ;

void
s_space (int mult)
{
  expressionS exp;
  expressionS val;
  char *p = 0;
  char *stop = ((void*)0);
  char stopc = 0;
  int bytes;





  if (flag_mri)
    stop = mri_comment_field (&stopc);



  if (flag_m68k_mri && mult > 1)
    {
      if (now_seg == absolute_section)
 {
   abs_section_offset += abs_section_offset & 1;
   if (line_label != ((void*)0))
     S_SET_VALUE (line_label, abs_section_offset);
 }
      else if (mri_common_symbol != ((void*)0))
 {
   valueT val;

   val = S_GET_VALUE (mri_common_symbol);
   if ((val & 1) != 0)
     {
       S_SET_VALUE (mri_common_symbol, val + 1);
       if (line_label != ((void*)0))
  {
    expressionS *symexp;

    symexp = symbol_get_value_expression (line_label);
    know (symexp->X_op == O_symbol);
    know (symexp->X_add_symbol == mri_common_symbol);
    symexp->X_add_number += 1;
  }
     }
 }
      else
 {
   do_align (1, (char *) ((void*)0), 0, 0);
   if (line_label != ((void*)0))
     {
       symbol_set_frag (line_label, frag_now);
       S_SET_VALUE (line_label, frag_now_fix ());
     }
 }
    }

  bytes = mult;

  expression (&exp);

  SKIP_WHITESPACE ();
  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      expression (&val);
    }
  else
    {
      val.X_op = O_constant;
      val.X_add_number = 0;
    }

  if (val.X_op != O_constant
      || val.X_add_number < - 0x80
      || val.X_add_number > 0xff
      || (mult != 0 && mult != 1 && val.X_add_number != 0))
    {
      resolve_expression (&exp);
      if (exp.X_op != O_constant)
 as_bad (_("unsupported variable size or fill value"));
      else
 {
   offsetT i;

   if (mult == 0)
     mult = 1;
   bytes = mult * exp.X_add_number;
   for (i = 0; i < exp.X_add_number; i++)
     emit_expr (&val, mult);
 }
    }
  else
    {
      if (now_seg == absolute_section || mri_common_symbol != ((void*)0))
 resolve_expression (&exp);

      if (exp.X_op == O_constant)
 {
   long repeat;

   repeat = exp.X_add_number;
   if (mult)
     repeat *= mult;
   bytes = repeat;
   if (repeat <= 0)
     {
       if (!flag_mri)
  as_warn (_(".space repeat count is zero, ignored"));
       else if (repeat < 0)
  as_warn (_(".space repeat count is negative, ignored"));
       goto getout;
     }


   if (now_seg == absolute_section)
     {
       abs_section_offset += repeat;
       goto getout;
     }




   if (mri_common_symbol != ((void*)0))
     {
       S_SET_VALUE (mri_common_symbol,
      S_GET_VALUE (mri_common_symbol) + repeat);
       goto getout;
     }

   if (!need_pass_2)
     p = frag_var (rs_fill, 1, 1, (relax_substateT) 0, (symbolS *) 0,
     (offsetT) repeat, (char *) 0);
 }
      else
 {
   if (now_seg == absolute_section)
     {
       as_bad (_("space allocation too complex in absolute section"));
       subseg_set (text_section, 0);
     }

   if (mri_common_symbol != ((void*)0))
     {
       as_bad (_("space allocation too complex in common section"));
       mri_common_symbol = ((void*)0);
     }

   if (!need_pass_2)
     p = frag_var (rs_space, 1, 1, (relax_substateT) 0,
     make_expr_symbol (&exp), (offsetT) 0, (char *) 0);
 }

      if (p)
 *p = val.X_add_number;
    }

 getout:




  if (flag_mri && (bytes & 1) != 0)
    mri_pending_align = 1;

  demand_empty_rest_of_line ();

  if (flag_mri)
    mri_comment_end (stop, stopc);
}
