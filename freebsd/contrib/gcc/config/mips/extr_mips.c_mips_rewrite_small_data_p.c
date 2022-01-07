
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;


 int SYMBOL_SMALL_DATA ;
 scalar_t__ TARGET_EXPLICIT_RELOCS ;
 scalar_t__ mips_symbolic_constant_p (int ,int*) ;

__attribute__((used)) static bool
mips_rewrite_small_data_p (rtx x)
{
  enum mips_symbol_type symbol_type;

  return (TARGET_EXPLICIT_RELOCS
   && mips_symbolic_constant_p (x, &symbol_type)
   && symbol_type == SYMBOL_SMALL_DATA);
}
