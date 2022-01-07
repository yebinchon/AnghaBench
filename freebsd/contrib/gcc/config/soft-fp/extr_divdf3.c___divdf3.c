
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DFtype ;


 int A ;
 int B ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DIV_D (int ,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_D (int ,int ) ;
 int FP_UNPACK_D (int ,int ) ;
 int R ;

DFtype __divdf3(DFtype a, DFtype b)
{
  FP_DECL_EX;
  FP_DECL_D(A); FP_DECL_D(B); FP_DECL_D(R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_D(A, a);
  FP_UNPACK_D(B, b);
  FP_DIV_D(R, A, B);
  FP_PACK_D(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
