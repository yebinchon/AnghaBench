
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;
typedef int DItype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_FROM_INT_Q (int ,int ,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_PACK_RAW_Q (int ,int ) ;
 int UDItype ;

TFtype __floatditf(DItype i)
{
  FP_DECL_EX;
  FP_DECL_Q(A);
  TFtype a;

  FP_FROM_INT_Q(A, i, DI_BITS, UDItype);
  FP_PACK_RAW_Q(a, A);
  FP_HANDLE_EXCEPTIONS;

  return a;
}
