
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ AND ;
 scalar_t__ GET_CODE (int ) ;
 int XEXP (int ,int ) ;

__attribute__((used)) static int
aliases_everything_p (rtx mem)
{
  if (GET_CODE (XEXP (mem, 0)) == AND)


    return 1;

  return 0;
}
