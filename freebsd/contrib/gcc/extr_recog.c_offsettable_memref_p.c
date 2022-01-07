
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ offsettable_address_p (int,int ,int ) ;

int
offsettable_memref_p (rtx op)
{
  return ((MEM_P (op))
   && offsettable_address_p (1, GET_MODE (op), XEXP (op, 0)));
}
