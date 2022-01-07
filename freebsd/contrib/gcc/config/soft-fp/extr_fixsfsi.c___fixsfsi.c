
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USItype ;
typedef int SItype ;
typedef int SFtype ;


 int A ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_S (int ,int ,int ,int) ;
 int FP_UNPACK_RAW_S (int ,int ) ;
 int SI_BITS ;

SItype __fixsfsi(SFtype a)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  USItype r;

  FP_UNPACK_RAW_S(A, a);
  FP_TO_INT_S(r, A, SI_BITS, 1);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
