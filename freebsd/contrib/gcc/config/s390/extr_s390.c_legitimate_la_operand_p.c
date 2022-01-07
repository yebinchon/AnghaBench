
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {scalar_t__ pointer; } ;
typedef int rtx ;


 scalar_t__ TARGET_64BIT ;
 int s390_decompose_address (int ,struct s390_address*) ;

bool
legitimate_la_operand_p (rtx op)
{
  struct s390_address addr;
  if (!s390_decompose_address (op, &addr))
    return 0;

  return (TARGET_64BIT || addr.pointer);
}
