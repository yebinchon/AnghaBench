
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;


 int A ;
 int FP_CLEAR_EXCEPTIONS ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_NEG_S (int ,int ) ;
 int FP_PACK_S (int ,int ) ;
 int FP_UNPACK_S (int ,int ) ;
 int R ;

SFtype __negsf2(SFtype a)
{
  FP_DECL_EX;
  FP_DECL_S(A); FP_DECL_S(R);
  SFtype r;

  FP_UNPACK_S(A, a);
  FP_NEG_S(R, A);
  FP_PACK_S(r, R);
  FP_CLEAR_EXCEPTIONS;
  FP_HANDLE_EXCEPTIONS;

  return r;
}
