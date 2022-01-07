
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;


 int A ;
 int B ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_MUL_S (int ,int ,int ) ;
 int FP_PACK_S (int ,int ) ;
 int FP_UNPACK_S (int ,int ) ;
 int R ;

SFtype __mulsf3(SFtype a, SFtype b)
{
  FP_DECL_EX;
  FP_DECL_S(A); FP_DECL_S(B); FP_DECL_S(R);
  SFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_S(A, a);
  FP_UNPACK_S(B, b);
  FP_MUL_S(R, A, B);
  FP_PACK_S(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
