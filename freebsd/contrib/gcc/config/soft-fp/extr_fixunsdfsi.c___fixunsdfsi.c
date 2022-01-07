
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USItype ;
typedef int DFtype ;


 int A ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_D (int ,int ,int ,int ) ;
 int FP_UNPACK_RAW_D (int ,int ) ;
 int SI_BITS ;

USItype __fixunsdfsi(DFtype a)
{
  FP_DECL_EX;
  FP_DECL_D(A);
  USItype r;

  FP_UNPACK_RAW_D(A, a);
  FP_TO_INT_D(r, A, SI_BITS, 0);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
