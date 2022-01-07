
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UDItype ;
typedef int TFtype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_Q (int ,int ,int ,int ) ;
 int FP_UNPACK_RAW_Q (int ,int ) ;

UDItype __fixunstfdi(TFtype a)
{
  FP_DECL_EX;
  FP_DECL_Q(A);
  UDItype r;

  FP_UNPACK_RAW_Q(A, a);
  FP_TO_INT_Q(r, A, DI_BITS, 0);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
