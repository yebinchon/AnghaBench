
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct alpha_macro {int* argsets; int name; } ;
struct TYPE_3__ {int X_op; int X_add_number; } ;
typedef TYPE_1__ expressionS ;
typedef enum alpha_macro_arg { ____Placeholder_alpha_macro_arg } alpha_macro_arg ;
 struct alpha_macro const* alpha_macros ;
 scalar_t__ alpha_num_macros ;
 int is_fpr_num (int ) ;
 int is_ir_num (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static const struct alpha_macro *
find_macro_match (const struct alpha_macro *first_macro,
    const expressionS *tok,
    int *pntok)

{
  const struct alpha_macro *macro = first_macro;
  int ntok = *pntok;

  do
    {
      const enum alpha_macro_arg *arg = macro->argsets;
      int tokidx = 0;

      while (*arg)
 {
   switch (*arg)
     {
     case 147:
       if (tokidx == ntok)
  return macro;
       else
  tokidx = 0;
       break;


     case 144:
       if (tokidx >= ntok || tok[tokidx].X_op != 129
    || !is_ir_num (tok[tokidx].X_add_number))
  goto match_failed;
       ++tokidx;
       break;


     case 142:
       if (tokidx >= ntok || tok[tokidx].X_op != 130
    || !is_ir_num (tok[tokidx].X_add_number))
  goto match_failed;
       ++tokidx;
       break;


     case 143:
       if (tokidx < ntok && tok[tokidx].X_op == 130
    && is_ir_num (tok[tokidx].X_add_number))
  ++tokidx;
       break;


     case 148:
       if (tokidx >= ntok || tok[tokidx].X_op != 140
    || !is_ir_num (tok[tokidx].X_add_number))
  goto match_failed;
       ++tokidx;
       break;


     case 145:
       if (tokidx >= ntok || tok[tokidx].X_op != 129
    || !is_fpr_num (tok[tokidx].X_add_number))
  goto match_failed;
       ++tokidx;
       break;


     case 146:
       if (tokidx >= ntok)
  goto match_failed;
       switch (tok[tokidx].X_op)
  {
  case 135:
  case 141:
  case 129:
  case 130:
  case 140:
  case 134:
  case 133:
  case 132:
  case 131:
  case 139:
  case 137:
  case 136:
  case 138:
  case 128:
    goto match_failed;

  default:
    break;
  }
       ++tokidx;
       break;

     match_failed:
       while (*arg != 147)
  ++arg;
       tokidx = 0;
       break;
     }
   ++arg;
 }
    }
  while (++macro - alpha_macros < (int) alpha_num_macros
  && !strcmp (macro->name, first_macro->name));

  return ((void*)0);
}
