
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_7__ {int reg_type; char* reg_name; int reg_num; } ;
typedef TYPE_2__ reg_entry ;
struct TYPE_10__ {int code; char* str; TYPE_2__* reg; } ;
struct TYPE_9__ {size_t mem_operands; int* types; TYPE_2__ const* index_reg; int reg_operands; TYPE_1__* op; TYPE_2__ const* base_reg; int ** seg; } ;
struct TYPE_8__ {char* disp; int is_mem; int in_bracket; int in_offset; TYPE_2__* reg; } ;
struct TYPE_6__ {TYPE_2__ const* regs; } ;


 int BaseIndex ;
 scalar_t__ REGNAM_AX ;
 scalar_t__ REGNAM_EAX ;
 int Reg16 ;
 int SReg2 ;
 int SReg3 ;
 int S_GET_SEGMENT (int *) ;





 int const T_PTR ;





 int _ (char*) ;
 int absolute_section ;
 int as_bad (int ,...) ;
 int as_warn (int ) ;
 int cs ;
 TYPE_5__ cur_token ;
 int ds ;
 int es ;
 int free (char*) ;
 int fs ;
 int gs ;
 TYPE_4__ i ;
 scalar_t__ i386_regtab ;
 int i386_scale (char*) ;
 int intel_bracket_expr () ;
 int intel_expr () ;
 int intel_match_token (int const) ;
 TYPE_3__ intel_parser ;
 int intel_putback_token () ;
 int ss ;
 int strcat (char*,char*) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int * symbol_find (char*) ;
 size_t this_operand ;
 scalar_t__ xmalloc (int ) ;

__attribute__((used)) static int
intel_e11 (void)
{
  switch (cur_token.code)
    {

    case '(':
      intel_match_token ('(');
      strcat (intel_parser.disp, "(");

      if (intel_expr () && intel_match_token (')'))
 {
   strcat (intel_parser.disp, ")");
   return 1;
 }
      return 0;


    case '[':
      return intel_bracket_expr ();



    case '.':
      strcat (intel_parser.disp, cur_token.str);
      intel_match_token (cur_token.code);



      if (!intel_parser.in_offset)
 intel_parser.is_mem = 1;

      return 1;


    case 131:
      {
 const reg_entry *reg = intel_parser.reg = cur_token.reg;

 intel_match_token (131);


 if (cur_token.code == ':')
   {
     if (!(reg->reg_type & (SReg2 | SReg3)))
       {
  as_bad (_("`%s' is not a valid segment register"),
   reg->reg_name);
  return 0;
       }
     else if (i.seg[i.mem_operands])
       as_warn (_("Extra segment override ignored"));
     else
       {
  if (!intel_parser.in_offset)
    intel_parser.is_mem = 1;
  switch (reg->reg_num)
    {
    case 0:
      i.seg[i.mem_operands] = &es;
      break;
    case 1:
      i.seg[i.mem_operands] = &cs;
      break;
    case 2:
      i.seg[i.mem_operands] = &ss;
      break;
    case 3:
      i.seg[i.mem_operands] = &ds;
      break;
    case 4:
      i.seg[i.mem_operands] = &fs;
      break;
    case 5:
      i.seg[i.mem_operands] = &gs;
      break;
    }
       }
   }


 else if (cur_token.code == '*')
   {
     if (!intel_parser.in_bracket)
       {
  as_bad (_("Register scaling only allowed in memory operands"));
  return 0;
       }

     if (reg->reg_type & Reg16)
       reg = i386_regtab + REGNAM_AX + 4;
     else if (i.index_reg)
       reg = i386_regtab + REGNAM_EAX + 4;


     intel_match_token ('*');
     i.index_reg = reg;
     i.types[this_operand] |= BaseIndex;



     if (cur_token.code == '+' || cur_token.code == '-')
       {
  char *str, sign = cur_token.code;
  intel_match_token (cur_token.code);
  if (cur_token.code != 136)
    {
      as_bad (_("Syntax error: Expecting a constant, got `%s'"),
       cur_token.str);
      return 0;
    }
  str = (char *) xmalloc (strlen (cur_token.str) + 2);
  strcpy (str + 1, cur_token.str);
  *str = sign;
  if (!i386_scale (str))
    return 0;
  free (str);
       }
     else if (!i386_scale (cur_token.str))
       return 0;
     intel_match_token (cur_token.code);
   }




 else if (intel_parser.in_bracket)
   {

     if (!i.base_reg)
       i.base_reg = reg;
     else if (!i.index_reg)
       i.index_reg = reg;
     else
       {
  as_bad (_("Too many register references in memory operand"));
  return 0;
       }

     i.types[this_operand] |= BaseIndex;
   }


 else if (!intel_parser.in_offset && !intel_parser.is_mem)
   {
     i.types[this_operand] |= reg->reg_type & ~BaseIndex;
     i.op[this_operand].regs = reg;
     i.reg_operands++;
   }
 else
   {
     as_bad (_("Invalid use of register"));
     return 0;
   }




 if (*intel_parser.disp != '\0'
     && !intel_parser.in_offset)
   {
     char *s = intel_parser.disp;
     s += strlen (s) - 1;
     if (*s == '+')
       *s = '\0';
   }

 return 1;
      }
    case 137:
    case 129:
    case 135:
    case 134:
    case 132:
    case 130:
    case 128:
      intel_match_token (cur_token.code);

      if (cur_token.code == T_PTR)
 return 1;


      intel_putback_token ();
      cur_token.code = 133;




    case 133:
      if (!intel_parser.in_offset && intel_parser.is_mem <= 0)
 {
   symbolS *symbolP;



   symbolP = symbol_find(cur_token.str);
   if (!symbolP || S_GET_SEGMENT(symbolP) != absolute_section)
     intel_parser.is_mem = 1;
 }


    case 136:
    case '-':
    case '+':
      {
 char *save_str, sign = 0;


 if (cur_token.code == '-' || cur_token.code == '+')
   {
     sign = cur_token.code;
     intel_match_token (cur_token.code);
     if (cur_token.code != 136)
       {
  as_bad (_("Syntax error: Expecting a constant, got `%s'"),
   cur_token.str);
  return 0;
       }
   }

 save_str = (char *) xmalloc (strlen (cur_token.str) + 2);
 strcpy (save_str + !!sign, cur_token.str);
 if (sign)
   *save_str = sign;


 intel_match_token (cur_token.code);



 if (cur_token.code == '*')
   {
     if (intel_match_token ('*') && cur_token.code == 131)
       {
  const reg_entry *reg = cur_token.reg;

  if (!intel_parser.in_bracket)
    {
      as_bad (_("Register scaling only allowed "
         "in memory operands"));
      return 0;
    }



  if (reg->reg_type & Reg16)
    reg = i386_regtab + REGNAM_AX + 4;
  else if (i.index_reg)
    reg = i386_regtab + REGNAM_EAX + 4;



  i.index_reg = reg;
  i.types[this_operand] |= BaseIndex;



  if (!i386_scale (save_str))
    return 0;
  intel_match_token (131);




  if (*intel_parser.disp != '\0')
    {
      char *s = intel_parser.disp;
      s += strlen (s) - 1;
      if (*s == '+')
        *s = '\0';
    }

  free (save_str);

  return 1;
       }




     intel_putback_token ();
   }


 strcat (intel_parser.disp, save_str);
 free (save_str);

 return 1;
      }
    }

  as_bad (_("Unrecognized token '%s'"), cur_token.str);
  return 0;
}
