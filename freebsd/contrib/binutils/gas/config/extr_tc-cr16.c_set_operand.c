
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* arg; } ;
typedef TYPE_1__ ins ;
struct TYPE_6__ {int type; int r; int rp; int i_r; } ;
typedef TYPE_2__ argument ;


 int ISSPACE (char) ;
 int _ (char*) ;






 int arg_idxrp ;

 int as_bad (int ,...) ;
 size_t cur_arg_num ;
 int get_index_register (char*) ;
 int get_index_register_pair (char*) ;
 int get_register (char*) ;
 int get_register_pair (char*) ;
 int getreg_image (int) ;
 int ins_parse ;
 int nullregister ;
 int process_label_constant (char*,TYPE_1__*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
set_operand (char *operand, ins * cr16_ins)
{
  char *operandS;
  char *operandE;

  argument *cur_arg = &cr16_ins->arg[cur_arg_num];


  operandS = operandE = operand;

  switch (cur_arg->type)
    {
    case 131:
      operandS++;
    case 134:

      process_label_constant (operandS, cr16_ins);

      if (cur_arg->type != 131)
        cur_arg->type = 134;
      break;

    case 130:
      operandS++;
    case 133:

      while (*operandE != '(')
        operandE++;
      *operandE = '\0';
      process_label_constant (operandS, cr16_ins);
      operandS = operandE;
    case 128:
      operandS++;

      while (*operandE != ')')
        operandE++;
      *operandE = '\0';
      if ((cur_arg->r = get_register (operandS)) == nullregister)
         as_bad (_("Illegal register `%s' in Instruction `%s'"),
              operandS, ins_parse);


      if ((cur_arg->type != 128)
   && ((getreg_image (cur_arg->r) == 12)
       || (getreg_image (cur_arg->r) == 13)
       || (getreg_image (cur_arg->r) == 14)
       || (getreg_image (cur_arg->r) == 15)))
         {
           cur_arg->type = 132;
           cur_arg->rp = cur_arg->r;
         }
      break;

    case 132:

      while (*operandE != '(')
        operandE++;
      *operandE = '\0';
      process_label_constant (operandS, cr16_ins);
      operandS = operandE;
      operandS++;

      while (*operandE != ')')
        operandE++;
      *operandE = '\0';
      if ((cur_arg->rp = get_register_pair (operandS)) == nullregister)
         as_bad (_("Illegal register pair `%s' in Instruction `%s'"),
              operandS, ins_parse);
      break;

    case 129:

      if ((strchr (operandS,'(') != ((void*)0)))
        {
         while ((*operandE != '(') && (! ISSPACE (*operandE)))
           operandE++;
         if ((cur_arg->rp = get_index_register_pair (operandE)) == nullregister)
              as_bad (_("Illegal register pair `%s' in Instruction `%s'"),
                            operandS, ins_parse);
         *operandE++ = '\0';
         cur_arg->type = arg_idxrp;
        }
      else
 cur_arg->rp = -1;

       operandE = operandS;

      while (*operandE != ']')
        operandE++;
      process_label_constant (++operandE, cr16_ins);
      *operandE++ = '\0';
      operandE = operandS;


      operandS = strchr (operandE,'[');
      if (operandS != ((void*)0))
        {
          *operandS++ = '\0';

          operandE = strchr (operandS, ']');

          if (operandE == ((void*)0))
            as_bad (_("unmatched '['"));
          else
            {

              *operandE = '\0';
              if (*(operandE + 1) != '\0')
                as_bad (_("garbage after index spec ignored"));
            }
        }

      if ((cur_arg->i_r = get_index_register (operandS)) == nullregister)
        as_bad (_("Illegal register `%s' in Instruction `%s'"),
                operandS, ins_parse);
      *operandE = '\0';
      *operandS = '\0';
      break;

    default:
      break;
    }
}
