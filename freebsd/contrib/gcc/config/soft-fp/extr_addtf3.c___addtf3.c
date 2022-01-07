
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;


 int A ;
 int B ;
 int FP_ADD_Q (int ,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_SEMIRAW_Q (int ,int ) ;
 int FP_UNPACK_SEMIRAW_Q (int ,int ) ;
 int R ;

TFtype __addtf3(TFtype a, TFtype b)
{
  FP_DECL_EX;
  FP_DECL_Q(A); FP_DECL_Q(B); FP_DECL_Q(R);
  TFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_Q(A, a);
  FP_UNPACK_SEMIRAW_Q(B, b);
  FP_ADD_Q(R, A, B);
  FP_PACK_SEMIRAW_Q(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
