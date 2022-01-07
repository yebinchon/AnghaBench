
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch_tdep {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int mips_saved_regsize (struct gdbarch_tdep*) ;

__attribute__((used)) static int
mips_eabi_use_struct_convention (int gcc_p, struct type *type)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  return (TYPE_LENGTH (type) > 2 * mips_saved_regsize (tdep));
}
