
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {scalar_t__ indx; } ;
typedef int rtx ;


 int XEXP (int ,int ) ;
 int s390_decompose_address (int ,struct s390_address*) ;

bool
s390_legitimate_address_without_index_p (rtx op)
{
  struct s390_address addr;

  if (!s390_decompose_address (XEXP (op, 0), &addr))
    return 0;
  if (addr.indx)
    return 0;

  return 1;
}
