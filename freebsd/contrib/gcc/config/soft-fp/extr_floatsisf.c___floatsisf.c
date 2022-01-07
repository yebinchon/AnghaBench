
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SItype ;
typedef int SFtype ;


 int A ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_FROM_INT_S (int ,int ,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_PACK_RAW_S (int ,int ) ;
 int SI_BITS ;
 int USItype ;

SFtype __floatsisf(SItype i)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  SFtype a;

  FP_FROM_INT_S(A, i, SI_BITS, USItype);
  FP_PACK_RAW_S(a, A);
  FP_HANDLE_EXCEPTIONS;

  return a;
}
