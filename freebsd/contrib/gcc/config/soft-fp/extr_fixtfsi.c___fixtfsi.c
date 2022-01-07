
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USItype ;
typedef int TFtype ;
typedef int SItype ;


 int A ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_Q (int ,int ,int ,int) ;
 int FP_UNPACK_RAW_Q (int ,int ) ;
 int SI_BITS ;

SItype __fixtfsi(TFtype a)
{
  FP_DECL_EX;
  FP_DECL_Q(A);
  USItype r;

  FP_UNPACK_RAW_Q(A, a);
  FP_TO_INT_Q(r, A, SI_BITS, 1);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
