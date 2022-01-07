
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;
typedef int SFtype ;


 int A ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_DECL_S (int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_SEMIRAW_S (int ,int ) ;
 int FP_TRUNC (int ,int ,int,int,int ,int ) ;
 int FP_UNPACK_SEMIRAW_Q (int ,int ) ;
 int Q ;
 int R ;
 int S ;

SFtype __trunctfsf2(TFtype a)
{
  FP_DECL_EX;
  FP_DECL_Q(A);
  FP_DECL_S(R);
  SFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_SEMIRAW_Q(A, a);



  FP_TRUNC(S,Q,1,2,R,A);

  FP_PACK_SEMIRAW_S(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
