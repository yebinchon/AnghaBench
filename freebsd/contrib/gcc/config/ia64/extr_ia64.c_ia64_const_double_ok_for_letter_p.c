
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_DOUBLE_OK_FOR_G (int ) ;

bool
ia64_const_double_ok_for_letter_p (rtx value, char c)
{
  switch (c)
    {
    case 'G':
      return CONST_DOUBLE_OK_FOR_G (value);
    default:
      return 0;
    }
}
