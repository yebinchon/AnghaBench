
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef int HOST_WIDE_INT ;


 scalar_t__ UNSPEC_ADDRESS_P (int ) ;
 int UNSPEC_ADDRESS_TYPE (int ) ;
 int mips_classify_symbol (int ) ;
 int mips_split_const (int ,int *,int *) ;

__attribute__((used)) static enum mips_symbol_type
mips_classify_symbolic_expression (rtx x)
{
  HOST_WIDE_INT offset;

  mips_split_const (x, &x, &offset);
  if (UNSPEC_ADDRESS_P (x))
    return UNSPEC_ADDRESS_TYPE (x);

  return mips_classify_symbol (x);
}
