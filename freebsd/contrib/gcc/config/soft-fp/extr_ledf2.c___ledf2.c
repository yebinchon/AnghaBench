
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DFtype ;


 int A ;
 int B ;
 int FP_CMP_D (int,int ,int ,int) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_EX_INVALID ;
 int FP_HANDLE_EXCEPTIONS ;
 scalar_t__ FP_ISSIGNAN_D (int ) ;
 int FP_SET_EXCEPTION (int ) ;
 int FP_UNPACK_RAW_D (int ,int ) ;

int __ledf2(DFtype a, DFtype b)
{
  FP_DECL_EX;
  FP_DECL_D(A); FP_DECL_D(B);
  int r;

  FP_UNPACK_RAW_D(A, a);
  FP_UNPACK_RAW_D(B, b);
  FP_CMP_D(r, A, B, 2);
  if (r == 2 && (FP_ISSIGNAN_D(A) || FP_ISSIGNAN_D(B)))
    FP_SET_EXCEPTION(FP_EX_INVALID);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
