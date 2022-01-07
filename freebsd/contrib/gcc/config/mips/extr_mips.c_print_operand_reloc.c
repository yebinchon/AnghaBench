
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef int HOST_WIDE_INT ;
typedef int FILE ;


 int UNSPEC_ADDRESS (int ) ;
 scalar_t__ UNSPEC_ADDRESS_P (int ) ;
 int fatal_insn (char*,int ) ;
 int fputc (char,int *) ;
 int fputs (char const*,int *) ;
 int mips_classify_symbolic_expression (int ) ;
 int mips_split_const (int ,int *,int *) ;
 int output_addr_const (int *,int ) ;
 int plus_constant (int ,int ) ;

__attribute__((used)) static void
print_operand_reloc (FILE *file, rtx op, const char **relocs)
{
  enum mips_symbol_type symbol_type;
  const char *p;
  rtx base;
  HOST_WIDE_INT offset;

  symbol_type = mips_classify_symbolic_expression (op);
  if (relocs[symbol_type] == 0)
    fatal_insn ("PRINT_OPERAND, invalid operand for relocation", op);


  mips_split_const (op, &base, &offset);
  if (UNSPEC_ADDRESS_P (base))
    op = plus_constant (UNSPEC_ADDRESS (base), offset);

  fputs (relocs[symbol_type], file);
  output_addr_const (file, op);
  for (p = relocs[symbol_type]; *p != 0; p++)
    if (*p == '(')
      fputc (')', file);
}
