
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DFtype ;


 int A ;
 int FP_CLEAR_EXCEPTIONS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_NEG_D (int ,int ) ;
 int FP_PACK_D (int ,int ) ;
 int FP_UNPACK_D (int ,int ) ;
 int R ;

DFtype __negdf2(DFtype a)
{
  FP_DECL_EX;
  FP_DECL_D(A); FP_DECL_D(R);
  DFtype r;

  FP_UNPACK_D(A, a);
  FP_NEG_D(R, A);
  FP_PACK_D(r, R);
  FP_CLEAR_EXCEPTIONS;
  FP_HANDLE_EXCEPTIONS;

  return r;
}
