
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_12__ {scalar_t__ exponent; scalar_t__ digits; int lsu; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_13__ {scalar_t__ emin; scalar_t__ emax; scalar_t__ digits; int clamp; } ;
typedef TYPE_2__ decContext ;
typedef scalar_t__ Int ;


 int DEC_Clamped ;
 int ISZERO (TYPE_1__*) ;
 int decApplyRound (TYPE_1__*,TYPE_2__*,scalar_t__,int *) ;
 int decSetOverflow (TYPE_1__*,TYPE_2__*,int *) ;
 int decSetSubnormal (TYPE_1__*,TYPE_2__*,scalar_t__*,int *) ;
 scalar_t__ decShiftToMost (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
decFinalize (decNumber * dn, decContext * set, Int * residue, uInt * status)
{
  Int shift;







  if (dn->exponent < 0
      && (dn->exponent < set->emin - dn->digits + 1))
    {

      decSetSubnormal (dn, set, residue, status);
      return;
    }


  if (*residue != 0)
    decApplyRound (dn, set, *residue, status);


  if (dn->exponent <= set->emax - set->digits + 1)
    return;


  if (dn->exponent > set->emax - dn->digits + 1)
    {
      decSetOverflow (dn, set, status);
      return;
    }

  if (!set->clamp)
    return;


  shift = dn->exponent - (set->emax - set->digits + 1);


  if (!ISZERO (dn))
    {
      dn->digits = decShiftToMost (dn->lsu, dn->digits, shift);
    }
  dn->exponent -= shift;
  *status |= DEC_Clamped;
  return;
}
