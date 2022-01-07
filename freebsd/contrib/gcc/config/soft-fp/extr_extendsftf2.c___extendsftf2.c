
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
 int FP_EXTEND (int ,int ,int,int,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_RAW_Q (int ,int ) ;
 int FP_UNPACK_RAW_S (int ,int ) ;
 int Q ;
 int R ;
 int S ;

TFtype __extendsftf2(SFtype a)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  FP_DECL_Q(R);
  TFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_RAW_S(A, a);



  FP_EXTEND(Q,S,2,1,R,A);

  FP_PACK_RAW_Q(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
