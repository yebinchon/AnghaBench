
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch_tdep {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int TYPE_CODE (int ) ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_LENGTH (int ) ;
 int check_typedef (struct type*) ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int mips_saved_regsize (struct gdbarch_tdep*) ;

__attribute__((used)) static int
mips_eabi_reg_struct_has_addr (int gcc_p, struct type *type)
{
  enum type_code typecode = TYPE_CODE (check_typedef (type));
  int len = TYPE_LENGTH (check_typedef (type));
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (typecode == TYPE_CODE_STRUCT || typecode == TYPE_CODE_UNION)
    return (len > mips_saved_regsize (tdep));

  return 0;
}
