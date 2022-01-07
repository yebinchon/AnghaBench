
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;
typedef int DItype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_FROM_INT_S (int ,int ,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_PACK_RAW_S (int ,int ) ;
 int UDItype ;

SFtype __floatdisf(DItype i)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  SFtype a;

  FP_FROM_INT_S(A, i, DI_BITS, UDItype);
  FP_PACK_RAW_S(a, A);
  FP_HANDLE_EXCEPTIONS;

  return a;
}
