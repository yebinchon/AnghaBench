
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arc_operand_value {size_t type; int flags; int value; } ;
struct arc_operand {char fmt; int shift; } ;
typedef enum operand { ____Placeholder_operand } operand ;
typedef int arc_insn ;
struct TYPE_2__ {int shift; } ;


 int ARC_MOD_AUXREG ;
 int ARC_REGISTER_READONLY ;
 int ARC_REGISTER_WRITEONLY ;
 int ARC_REG_LIMM ;
 int ARC_REG_SHIMM ;
 int ARC_REG_SHIMM_UPDATE ;
 scalar_t__ ARC_SHIMM_CONST_P (long) ;
 size_t AUXREG ;
 int I (int) ;
 size_t LS_BASE ;
 size_t LS_DEST ;
 size_t LS_OFFSET ;
 size_t LS_VALUE ;
 int OP_LIMM ;
 int OP_NONE ;
 int OP_REG ;
 int OP_SHIMM ;
 char* _ (char*) ;
 TYPE_1__* arc_operands ;
 int cond_p ;
 scalar_t__ flag_p ;
 int flagshimm_handled_p ;
 long limm ;
 int limm_p ;
 int* ls_operand ;
 long shimm ;
 int shimm_p ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static arc_insn
insert_reg (arc_insn insn,
     const struct arc_operand *operand,
     int mods,
     const struct arc_operand_value *reg,
     long value,
     const char **errmsg)
{
  static char buf[100];
  enum operand op_type = OP_NONE;

  if (reg == ((void*)0))
    {





      if (ARC_SHIMM_CONST_P (value)

   && !cond_p


   && (!shimm_p || shimm == value))
 {
   int marker;

   op_type = OP_SHIMM;


   if ('a' != operand->fmt)
     {
       shimm_p = 1;
       shimm = value;
       flagshimm_handled_p = 1;
       marker = flag_p ? ARC_REG_SHIMM_UPDATE : ARC_REG_SHIMM;
     }
   else
     {

       marker = ARC_REG_SHIMM;
     }
   insn |= marker << operand->shift;

 }

      else if (!limm_p || limm == value)
 {
   op_type = OP_LIMM;
   limm_p = 1;
   limm = value;
   insn |= ARC_REG_LIMM << operand->shift;

 }
      else
 *errmsg = _("unable to fit different valued constants into instruction");
    }
  else
    {


      if (reg->type == AUXREG)
 {
   if (!(mods & ARC_MOD_AUXREG))
     *errmsg = _("auxiliary register not allowed here");
   else
     {
       if ((insn & I(-1)) == I(2))
  {
    if (reg->flags & ARC_REGISTER_READONLY)
      *errmsg = _("attempt to set readonly register");
  }
       else
  {
    if (reg->flags & ARC_REGISTER_WRITEONLY)
      *errmsg = _("attempt to read writeonly register");
  }
       insn |= ARC_REG_SHIMM << operand->shift;
       insn |= reg->value << arc_operands[reg->type].shift;
     }
 }
      else
 {

   if ('a' == operand->fmt || ((insn & I(-1)) < I(2)))
     {
       if (reg->flags & ARC_REGISTER_READONLY)
  *errmsg = _("attempt to set readonly register");
     }
   if ('a' != operand->fmt)
     {
       if (reg->flags & ARC_REGISTER_WRITEONLY)
  *errmsg = _("attempt to read writeonly register");
     }

   if ((unsigned int) reg->value > 60)
     {
       sprintf (buf, _("invalid register number `%d'"), reg->value);
       *errmsg = buf;
     }
   insn |= reg->value << operand->shift;
   op_type = OP_REG;
 }
    }

  switch (operand->fmt)
    {
    case 'a':
      ls_operand[LS_DEST] = op_type;
      break;
    case 's':
      ls_operand[LS_BASE] = op_type;
      break;
    case 'c':
      if ((insn & I(-1)) == I(2))
 ls_operand[LS_VALUE] = op_type;
      else
 ls_operand[LS_OFFSET] = op_type;
      break;
    case 'o': case 'O':
      ls_operand[LS_OFFSET] = op_type;
      break;
    }

  return insn;
}
