
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UDItype ;
typedef int SFtype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_S (int ,int ,int ,int ) ;
 int FP_UNPACK_RAW_S (int ,int ) ;

UDItype __fixunssfdi(SFtype a)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  UDItype r;

  FP_UNPACK_RAW_S(A, a);
  FP_TO_INT_S(r, A, DI_BITS, 0);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
