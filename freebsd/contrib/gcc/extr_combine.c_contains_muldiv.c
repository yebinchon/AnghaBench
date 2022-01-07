
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BINARY_P (int ) ;
 int CONST_INT ;

 int GET_CODE (int ) ;
 int INTVAL (int ) ;




 int UNARY_P (int ) ;
 int XEXP (int ,int) ;
 int exact_log2 (int ) ;

__attribute__((used)) static int
contains_muldiv (rtx x)
{
  switch (GET_CODE (x))
    {
    case 131: case 132: case 128: case 129:
      return 1;

    case 130:
      return ! (GET_CODE (XEXP (x, 1)) == CONST_INT
  && exact_log2 (INTVAL (XEXP (x, 1))) >= 0);
    default:
      if (BINARY_P (x))
 return contains_muldiv (XEXP (x, 0))
     || contains_muldiv (XEXP (x, 1));

      if (UNARY_P (x))
 return contains_muldiv (XEXP (x, 0));

      return 0;
    }
}
