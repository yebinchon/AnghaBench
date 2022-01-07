
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_15__ ;


typedef scalar_t__ valueT ;
struct TYPE_33__ {scalar_t__ X_op; scalar_t__ X_add_number; TYPE_3__* X_op_symbol; TYPE_3__* X_add_symbol; } ;
struct TYPE_32__ {int sy_resolved; int sy_resolving; TYPE_2__* sy_frag; TYPE_8__ sy_value; int sy_mri_common; TYPE_1__* bsym; } ;
typedef TYPE_3__ symbolS ;
struct local_symbol {scalar_t__ lsy_value; } ;
typedef scalar_t__ segT ;
typedef int operatorT ;
typedef int offsetT ;
struct TYPE_31__ {scalar_t__ fr_address; } ;
struct TYPE_30__ {int flags; } ;
struct TYPE_29__ {scalar_t__ fr_address; } ;


 int BAD_CASE (int) ;
 int BSF_RELC ;
 int BSF_SRELC ;
 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_3__*) ;
 scalar_t__ OCTETS_PER_BYTE ;
 int S_GET_NAME (TYPE_3__*) ;
 scalar_t__ S_GET_SEGMENT (TYPE_3__*) ;
 int S_IS_COMMON (TYPE_3__*) ;
 int S_IS_DEFINED (TYPE_3__*) ;
 int S_IS_WEAK (TYPE_3__*) ;
 int S_IS_WEAKREFR (TYPE_3__*) ;
 int S_SET_SEGMENT (TYPE_3__*,scalar_t__) ;
 int S_SET_VALUE (TYPE_3__*,scalar_t__) ;
 int _ (char*) ;
 int abort () ;
 scalar_t__ absolute_section ;
 int as_bad (int ,int ) ;
 int as_bad_where (char*,unsigned int,int ) ;
 int assert (int) ;
 int copy_symbol_attributes (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ expr_section ;
 int expr_symbol_where (TYPE_3__*,char**,unsigned int*) ;
 scalar_t__ finalize_syms ;
 int fprintf (int ,char*,char*) ;
 TYPE_3__* local_symbol_convert (struct local_symbol*) ;
 TYPE_15__* local_symbol_get_frag (struct local_symbol*) ;
 int local_symbol_mark_resolved (struct local_symbol*) ;
 scalar_t__ local_symbol_resolved_p (struct local_symbol*) ;
 int print_expr (TYPE_8__*) ;
 int report_op_error (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 int stderr ;
 TYPE_3__* symbol_new (char*,scalar_t__,int ,int *) ;
 char* symbol_relc_make_expr (TYPE_8__*) ;
 int symbol_resolved_p (TYPE_3__*) ;
 int symbol_shadow_p (TYPE_3__*) ;
 int symbol_table_insert (TYPE_3__*) ;
 scalar_t__ undefined_section ;
 scalar_t__ use_complex_relocs_for (TYPE_3__*) ;
 int zero_address_frag ;

valueT
resolve_symbol_value (symbolS *symp)
{
  int resolved;
  valueT final_val = 0;
  segT final_seg;

  if (LOCAL_SYMBOL_CHECK (symp))
    {
      struct local_symbol *locsym = (struct local_symbol *) symp;

      final_val = locsym->lsy_value;
      if (local_symbol_resolved_p (locsym))
 return final_val;

      final_val += local_symbol_get_frag (locsym)->fr_address / OCTETS_PER_BYTE;

      if (finalize_syms)
 {
   locsym->lsy_value = final_val;
   local_symbol_mark_resolved (locsym);
 }

      return final_val;
    }

  if (symp->sy_resolved)
    {
      if (symp->sy_value.X_op == 148)
 return (valueT) symp->sy_value.X_add_number;
      else
 return 0;
    }

  resolved = 0;
  final_seg = S_GET_SEGMENT (symp);

  if (symp->sy_resolving)
    {
      if (finalize_syms)
 as_bad (_("symbol definition loop encountered at `%s'"),
  S_GET_NAME (symp));
      final_val = 0;
      resolved = 1;
    }
  else
    {
      symbolS *add_symbol, *op_symbol;
      offsetT left, right;
      segT seg_left, seg_right;
      operatorT op;
      int move_seg_ok;

      symp->sy_resolving = 1;


      add_symbol = symp->sy_value.X_add_symbol;
      op_symbol = symp->sy_value.X_op_symbol;
      final_val = symp->sy_value.X_add_number;
      op = symp->sy_value.X_op;

      switch (op)
 {
 default:
   BAD_CASE (op);
   break;

 case 156:
   final_val = 0;


 case 148:
   final_val += symp->sy_frag->fr_address / OCTETS_PER_BYTE;
   if (final_seg == expr_section)
     final_seg = absolute_section;


 case 133:
   resolved = 1;
   break;

 case 130:
 case 129:
   left = resolve_symbol_value (add_symbol);
   seg_left = S_GET_SEGMENT (add_symbol);
   if (finalize_syms)
     symp->sy_value.X_op_symbol = ((void*)0);

 do_symbol:
   if (S_IS_WEAKREFR (symp))
     {
       assert (final_val == 0);
       if (S_IS_WEAKREFR (add_symbol))
  {
    assert (add_symbol->sy_value.X_op == 130
     && add_symbol->sy_value.X_add_number == 0);
    add_symbol = add_symbol->sy_value.X_add_symbol;
    assert (! S_IS_WEAKREFR (add_symbol));
    symp->sy_value.X_add_symbol = add_symbol;
  }
     }

   if (symp->sy_mri_common)
     {



       resolved = symbol_resolved_p (add_symbol);
       break;
     }

   if (finalize_syms && final_val == 0)
     {
       if (LOCAL_SYMBOL_CHECK (add_symbol))
  add_symbol = local_symbol_convert ((struct local_symbol *)
         add_symbol);
       copy_symbol_attributes (symp, add_symbol);
     }







   if (! S_IS_DEFINED (add_symbol)



       || S_IS_COMMON (add_symbol))
     {
       if (finalize_syms)
  {
    symp->sy_value.X_op = 130;
    symp->sy_value.X_add_symbol = add_symbol;
    symp->sy_value.X_add_number = final_val;

    symp->sy_value.X_op_symbol = add_symbol;
    final_seg = seg_left;
  }
       final_val = 0;
       resolved = symbol_resolved_p (add_symbol);
       symp->sy_resolving = 0;
       goto exit_dont_set_value;
     }
   else if (finalize_syms
     && ((final_seg == expr_section && seg_left != expr_section)
         || symbol_shadow_p (symp)))
     {





       symp->sy_value.X_op = 130;
       symp->sy_value.X_add_symbol = add_symbol;
       symp->sy_value.X_add_number = final_val;
       symp->sy_value.X_op_symbol = add_symbol;
       final_seg = seg_left;
       final_val += symp->sy_frag->fr_address + left;
       resolved = symbol_resolved_p (add_symbol);
       symp->sy_resolving = 0;
       goto exit_dont_set_value;
     }
   else
     {
       final_val += symp->sy_frag->fr_address + left;
       if (final_seg == expr_section || final_seg == undefined_section)
  final_seg = seg_left;
     }

   resolved = symbol_resolved_p (add_symbol);
   if (S_IS_WEAKREFR (symp))
     goto exit_dont_set_value;
   break;

 case 128:
 case 150:
 case 139:
   left = resolve_symbol_value (add_symbol);
   seg_left = S_GET_SEGMENT (add_symbol);





   if (op != 139 && seg_left != absolute_section
       && finalize_syms)
     report_op_error (symp, add_symbol, ((void*)0));

   if (final_seg == expr_section || final_seg == undefined_section)
     final_seg = absolute_section;

   if (op == 128)
     left = -left;
   else if (op == 139)
     left = !left;
   else
     left = ~left;

   final_val += left + symp->sy_frag->fr_address;

   resolved = symbol_resolved_p (add_symbol);
   break;

 case 135:
 case 147:
 case 136:
 case 141:
 case 132:
 case 151:
 case 149:
 case 152:
 case 153:
 case 155:
 case 131:
 case 146:
 case 134:
 case 137:
 case 142:
 case 145:
 case 144:
 case 140:
 case 138:
   left = resolve_symbol_value (add_symbol);
   right = resolve_symbol_value (op_symbol);
   seg_left = S_GET_SEGMENT (add_symbol);
   seg_right = S_GET_SEGMENT (op_symbol);



   if (op == 155)
     {
       if (seg_right == absolute_section)
  {
    final_val += right;
    goto do_symbol;
  }
       else if (seg_left == absolute_section)
  {
    final_val += left;
    add_symbol = op_symbol;
    left = right;
    seg_left = seg_right;
    goto do_symbol;
  }
     }
   else if (op == 131)
     {
       if (seg_right == absolute_section)
  {
    final_val -= right;
    goto do_symbol;
  }
     }

   move_seg_ok = 1;







   if (!(seg_left == absolute_section
     && seg_right == absolute_section)
       && !(op == 146 || op == 134)
       && !((op == 131
      || op == 137 || op == 142 || op == 145 || op == 144)
     && seg_left == seg_right
     && (seg_left != undefined_section
         || add_symbol == op_symbol)))
     {


       if (finalize_syms)
  report_op_error (symp, add_symbol, op_symbol);




       else
  move_seg_ok = 0;
     }

   if (move_seg_ok
       && (final_seg == expr_section || final_seg == undefined_section))
     final_seg = absolute_section;


   if ((op == 147 || op == 136) && right == 0)
     {


       if (seg_right == absolute_section && finalize_syms)
  {
    char *file;
    unsigned int line;

    if (expr_symbol_where (symp, &file, &line))
      as_bad_where (file, line, _("division by zero"));
    else
      as_bad (_("division by zero when setting `%s'"),
       S_GET_NAME (symp));
  }

       right = 1;
     }

   switch (symp->sy_value.X_op)
     {
     case 135: left *= right; break;
     case 147: left /= right; break;
     case 136: left %= right; break;
     case 141: left <<= right; break;
     case 132: left >>= right; break;
     case 151: left |= right; break;
     case 149: left |= ~right; break;
     case 152: left ^= right; break;
     case 153: left &= right; break;
     case 155: left += right; break;
     case 131: left -= right; break;
     case 146:
     case 134:
       left = (left == right && seg_left == seg_right
        && (seg_left != undefined_section
     || add_symbol == op_symbol)
        ? ~ (offsetT) 0 : 0);
       if (symp->sy_value.X_op == 134)
  left = ~left;
       break;
     case 137: left = left < right ? ~ (offsetT) 0 : 0; break;
     case 142: left = left <= right ? ~ (offsetT) 0 : 0; break;
     case 145: left = left >= right ? ~ (offsetT) 0 : 0; break;
     case 144: left = left > right ? ~ (offsetT) 0 : 0; break;
     case 140: left = left && right; break;
     case 138: left = left || right; break;
     default: abort ();
     }

   final_val += symp->sy_frag->fr_address + left;
   if (final_seg == expr_section || final_seg == undefined_section)
     {
       if (seg_left == undefined_section
    || seg_right == undefined_section)
  final_seg = undefined_section;
       else if (seg_left == absolute_section)
  final_seg = seg_right;
       else
  final_seg = seg_left;
     }
   resolved = (symbol_resolved_p (add_symbol)
        && symbol_resolved_p (op_symbol));
   break;

 case 154:
 case 143:





   break;
 }

      symp->sy_resolving = 0;
    }

  if (finalize_syms)
    S_SET_VALUE (symp, final_val);

exit_dont_set_value:


    S_SET_SEGMENT (symp, final_seg);


  if (finalize_syms)
    {
      if (resolved)
 symp->sy_resolved = 1;
      else if (S_GET_SEGMENT (symp) != expr_section)
 {
   as_bad (_("can't resolve value for symbol `%s'"),
    S_GET_NAME (symp));
   symp->sy_resolved = 1;
 }
    }

  return final_val;
}
