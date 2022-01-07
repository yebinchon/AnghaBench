
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FALSE ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MINUS ;
 int XEXP (int ,int) ;
 scalar_t__ label_mentioned_p (int ) ;
 scalar_t__ symbol_mentioned_p (int ) ;

__attribute__((used)) static int
pcrel_constant_p (rtx x)
{
  if (GET_CODE (x) == MINUS)
    return symbol_mentioned_p (XEXP (x, 0)) && label_mentioned_p (XEXP (x, 1));

  return FALSE;
}
