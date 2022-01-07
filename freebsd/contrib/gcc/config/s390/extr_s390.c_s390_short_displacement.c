
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_GOT ;
 scalar_t__ UNSPEC_GOTNTPOFF ;
 int XEXP (int ,int ) ;
 scalar_t__ XINT (int ,int) ;

__attribute__((used)) static bool
s390_short_displacement (rtx disp)
{

  if (!disp)
    return 1;


  if (GET_CODE (disp) == CONST_INT)
    return INTVAL (disp) >= 0 && INTVAL (disp) < 4096;


  if (GET_CODE (disp) == CONST
      && GET_CODE (XEXP (disp, 0)) == UNSPEC
      && (XINT (XEXP (disp, 0), 1) == UNSPEC_GOT
          || XINT (XEXP (disp, 0), 1) == UNSPEC_GOTNTPOFF))
    return 0;



  if (GET_CODE (disp) == CONST)
    return 1;

  return 0;
}
