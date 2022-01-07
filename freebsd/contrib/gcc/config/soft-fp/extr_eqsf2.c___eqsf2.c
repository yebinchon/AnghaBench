
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;


 int A ;
 int B ;
 int FP_CMP_EQ_S (int,int ,int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_EX_INVALID ;
 int FP_HANDLE_EXCEPTIONS ;
 scalar_t__ FP_ISSIGNAN_S (int ) ;
 int FP_SET_EXCEPTION (int ) ;
 int FP_UNPACK_RAW_S (int ,int ) ;

int __eqsf2(SFtype a, SFtype b)
{
  FP_DECL_EX;
  FP_DECL_S(A); FP_DECL_S(B);
  int r;

  FP_UNPACK_RAW_S(A, a);
  FP_UNPACK_RAW_S(B, b);
  FP_CMP_EQ_S(r, A, B);
  if (r && (FP_ISSIGNAN_S(A) || FP_ISSIGNAN_S(B)))
    FP_SET_EXCEPTION(FP_EX_INVALID);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
