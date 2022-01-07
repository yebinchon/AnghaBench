
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {scalar_t__ indx; } ;
typedef int rtx ;


 int COSTS_N_INSNS (int) ;
 int s390_decompose_address (int ,struct s390_address*) ;

__attribute__((used)) static int
s390_address_cost (rtx addr)
{
  struct s390_address ad;
  if (!s390_decompose_address (addr, &ad))
    return 1000;

  return ad.indx? COSTS_N_INSNS (1) + 1 : COSTS_N_INSNS (1);
}
