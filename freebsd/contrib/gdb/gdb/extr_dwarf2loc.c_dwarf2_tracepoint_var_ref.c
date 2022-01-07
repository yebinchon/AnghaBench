
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct TYPE_2__ {unsigned char reg; } ;
struct axs_value {void* kind; TYPE_1__ u; } ;
struct agent_expr {int scope; } ;
typedef unsigned char ULONGEST ;
typedef int LONGEST ;


 unsigned char DW_OP_fbreg ;
 unsigned char DW_OP_reg0 ;
 unsigned char DW_OP_reg31 ;
 unsigned char DW_OP_regx ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int TARGET_VIRTUAL_FRAME_POINTER (int ,int*,int *) ;
 int aop_add ;
 int ax_const_l (struct agent_expr*,int ) ;
 int ax_reg (struct agent_expr*,int) ;
 int ax_simple (struct agent_expr*,int ) ;
 void* axs_lvalue_memory ;
 void* axs_lvalue_register ;
 int error (char*,int ) ;
 unsigned char* read_sleb128 (unsigned char*,unsigned char*,int *) ;
 int read_uleb128 (unsigned char*,unsigned char*,unsigned char*) ;

__attribute__((used)) static void
dwarf2_tracepoint_var_ref (struct symbol * symbol, struct agent_expr * ax,
      struct axs_value * value, unsigned char *data,
      int size)
{
  if (size == 0)
    error ("Symbol \"%s\" has been optimized out.",
    SYMBOL_PRINT_NAME (symbol));

  if (size == 1
      && data[0] >= DW_OP_reg0
      && data[0] <= DW_OP_reg31)
    {
      value->kind = axs_lvalue_register;
      value->u.reg = data[0] - DW_OP_reg0;
    }
  else if (data[0] == DW_OP_regx)
    {
      ULONGEST reg;
      read_uleb128 (data + 1, data + size, &reg);
      value->kind = axs_lvalue_register;
      value->u.reg = reg;
    }
  else if (data[0] == DW_OP_fbreg)
    {


      int frame_reg;
      LONGEST frame_offset;
      unsigned char *buf_end;

      buf_end = read_sleb128 (data + 1, data + size, &frame_offset);
      if (buf_end != data + size)
 error ("Unexpected opcode after DW_OP_fbreg for symbol \"%s\".",
        SYMBOL_PRINT_NAME (symbol));

      TARGET_VIRTUAL_FRAME_POINTER (ax->scope, &frame_reg, &frame_offset);
      ax_reg (ax, frame_reg);
      ax_const_l (ax, frame_offset);
      ax_simple (ax, aop_add);

      ax_const_l (ax, frame_offset);
      ax_simple (ax, aop_add);
      value->kind = axs_lvalue_memory;
    }
  else
    error ("Unsupported DWARF opcode in the location of \"%s\".",
    SYMBOL_PRINT_NAME (symbol));
}
