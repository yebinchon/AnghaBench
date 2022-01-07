
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DItype ;
typedef int DFtype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_FROM_INT_D (int ,int ,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_PACK_RAW_D (int ,int ) ;
 int UDItype ;

DFtype __floatdidf(DItype i)
{
  FP_DECL_EX;
  FP_DECL_D(A);
  DFtype a;

  FP_FROM_INT_D(A, i, DI_BITS, UDItype);
  FP_PACK_RAW_D(a, A);
  FP_HANDLE_EXCEPTIONS;

  return a;
}
