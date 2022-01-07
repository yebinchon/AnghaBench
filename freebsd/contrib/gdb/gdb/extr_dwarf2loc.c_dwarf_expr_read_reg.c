
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_baton {int frame; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 int DWARF2_REG_TO_REGNUM (int) ;
 scalar_t__ alloca (int) ;
 int current_gdbarch ;
 int extract_unsigned_integer (char*,int) ;
 int frame_register (int ,int,int*,int*,int *,int*,char*) ;
 int register_size (int ,int) ;

__attribute__((used)) static CORE_ADDR
dwarf_expr_read_reg (void *baton, int dwarf_regnum)
{
  struct dwarf_expr_baton *debaton = (struct dwarf_expr_baton *) baton;
  CORE_ADDR result, save_addr;
  enum lval_type lval_type;
  char *buf;
  int optimized, regnum, realnum, regsize;

  regnum = DWARF2_REG_TO_REGNUM (dwarf_regnum);
  regsize = register_size (current_gdbarch, regnum);
  buf = (char *) alloca (regsize);

  frame_register (debaton->frame, regnum, &optimized, &lval_type, &save_addr,
    &realnum, buf);


  result = extract_unsigned_integer (buf, regsize);

  return result;
}
