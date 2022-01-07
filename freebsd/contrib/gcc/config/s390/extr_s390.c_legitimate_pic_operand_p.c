
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int SYMBOLIC_CONST (int ) ;

int
legitimate_pic_operand_p (rtx op)
{

  if (!SYMBOLIC_CONST (op))
    return 1;



  return 0;
}
