
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_5__ {int digits; int lsu; int exponent; int bits; } ;
typedef TYPE_1__ decNumber ;
typedef int decContext ;
typedef int Int ;


 int decSetCoeff (TYPE_1__*,int *,int ,int ,int *,int *) ;

__attribute__((used)) static void
decCopyFit (decNumber * dest, const decNumber * src, decContext * set,
     Int * residue, uInt * status)
{
  dest->bits = src->bits;
  dest->exponent = src->exponent;
  decSetCoeff (dest, set, src->lsu, src->digits, residue, status);
}
