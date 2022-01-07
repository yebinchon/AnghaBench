
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;


 int CONST_OK_FOR_I (int ) ;
 int CONST_OK_FOR_J (int ) ;
 int CONST_OK_FOR_K (int ) ;
 int CONST_OK_FOR_L (int ) ;
 int CONST_OK_FOR_M (int ) ;
 int CONST_OK_FOR_N (int ) ;
 int CONST_OK_FOR_O (int ) ;
 int CONST_OK_FOR_P (int ) ;

bool
ia64_const_ok_for_letter_p (HOST_WIDE_INT value, char c)
{
  switch (c)
    {
    case 'I':
      return CONST_OK_FOR_I (value);
    case 'J':
      return CONST_OK_FOR_J (value);
    case 'K':
      return CONST_OK_FOR_K (value);
    case 'L':
      return CONST_OK_FOR_L (value);
    case 'M':
      return CONST_OK_FOR_M (value);
    case 'N':
      return CONST_OK_FOR_N (value);
    case 'O':
      return CONST_OK_FOR_O (value);
    case 'P':
      return CONST_OK_FOR_P (value);
    default:
      return 0;
    }
}
