
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;
typedef int DFtype ;


 int A ;
 int D ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_SEMIRAW_S (int ,int ) ;
 int FP_TRUNC (int ,int ,int,int,int ,int ) ;
 int FP_UNPACK_SEMIRAW_D (int ,int ) ;
 int R ;
 int S ;

SFtype __truncdfsf2(DFtype a)
{
  FP_DECL_EX;
  FP_DECL_D(A);
  FP_DECL_S(R);
  SFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_D(A, a);



  FP_TRUNC(S,D,1,1,R,A);

  FP_PACK_SEMIRAW_S(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
