
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 int MEM_P (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ offsettable_address_p (int,int ,int ) ;
 int rs6000_legitimate_offset_address_p (int ,int ,int) ;

bool
rs6000_offsettable_memref_p (rtx op)
{
  if (!MEM_P (op))
    return 0;


  if (offsettable_address_p (1, GET_MODE (op), XEXP (op, 0)))
    return 1;







  return rs6000_legitimate_offset_address_p (GET_MODE (op), XEXP (op, 0), 1);
}
