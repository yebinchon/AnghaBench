
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;

__attribute__((used)) static int
m16_check_op (rtx op, int low, int high, int mask)
{
  return (GET_CODE (op) == CONST_INT
   && INTVAL (op) >= low
   && INTVAL (op) <= high
   && (INTVAL (op) & mask) == 0);
}
