
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef scalar_t__ HOST_WIDE_INT ;


 int ABI_HAS_64BIT_SYMBOLS ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ LABEL_REF ;
 int Pmode ;
 int SMALL_OPERAND (scalar_t__) ;
 scalar_t__ SYMBOL_REF ;





 scalar_t__ UNSPEC_ADDRESS_P (int ) ;
 int UNSPEC_ADDRESS_TYPE (int ) ;
 int gcc_unreachable () ;
 int mips_classify_symbol (int ) ;
 int mips_offset_within_object_p (int ,scalar_t__) ;
 int mips_split_const (int ,int *,scalar_t__*) ;

bool
mips_symbolic_constant_p (rtx x, enum mips_symbol_type *symbol_type)
{
  HOST_WIDE_INT offset;

  mips_split_const (x, &x, &offset);
  if (UNSPEC_ADDRESS_P (x))
    *symbol_type = UNSPEC_ADDRESS_TYPE (x);
  else if (GET_CODE (x) == SYMBOL_REF || GET_CODE (x) == LABEL_REF)
    {
      *symbol_type = mips_classify_symbol (x);
      if (*symbol_type == 131)
 return 0;
    }
  else
    return 0;

  if (offset == 0)
    return 1;



  switch (*symbol_type)
    {
    case 140:
    case 145:
    case 143:
    case 144:




      if (Pmode == DImode && !ABI_HAS_64BIT_SYMBOLS)
 return mips_offset_within_object_p (x, offset);


      return 1;

    case 142:



      if (GET_CODE (x) == LABEL_REF)
 return 1;



    case 132:



      return mips_offset_within_object_p (x, offset);

    case 133:
    case 136:


      return SMALL_OPERAND (offset);

    case 134:
    case 138:
    case 139:
    case 137:
    case 130:
    case 129:
    case 141:
    case 128:
    case 135:
    case 131:
      return 0;
    }
  gcc_unreachable ();
}
