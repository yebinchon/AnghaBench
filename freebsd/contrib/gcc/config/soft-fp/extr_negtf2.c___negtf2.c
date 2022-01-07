
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;


 int A ;
 int FP_CLEAR_EXCEPTIONS ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_NEG_Q (int ,int ) ;
 int FP_PACK_Q (int ,int ) ;
 int FP_UNPACK_Q (int ,int ) ;
 int R ;

TFtype __negtf2(TFtype a)
{
  FP_DECL_EX;
  FP_DECL_Q(A); FP_DECL_Q(R);
  TFtype r;

  FP_UNPACK_Q(A, a);
  FP_NEG_Q(R, A);
  FP_PACK_Q(r, R);
  FP_CLEAR_EXCEPTIONS;
  FP_HANDLE_EXCEPTIONS;

  return r;
}
