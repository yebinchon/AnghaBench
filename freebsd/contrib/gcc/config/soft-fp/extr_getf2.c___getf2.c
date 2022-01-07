
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;


 int A ;
 int B ;
 int FP_CMP_Q (int,int ,int ,int) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_EX_INVALID ;
 int FP_HANDLE_EXCEPTIONS ;
 scalar_t__ FP_ISSIGNAN_Q (int ) ;
 int FP_SET_EXCEPTION (int ) ;
 int FP_UNPACK_RAW_Q (int ,int ) ;

int __getf2(TFtype a, TFtype b)
{
  FP_DECL_EX;
  FP_DECL_Q(A); FP_DECL_Q(B);
  int r;

  FP_UNPACK_RAW_Q(A, a);
  FP_UNPACK_RAW_Q(B, b);
  FP_CMP_Q(r, A, B, -2);
  if (r == -2 && (FP_ISSIGNAN_Q(A) || FP_ISSIGNAN_Q(B)))
    FP_SET_EXCEPTION(FP_EX_INVALID);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
