
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;
typedef int DFtype ;


 int A ;
 int D ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_EXTEND (int ,int ,int,int,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_RAW_Q (int ,int ) ;
 int FP_UNPACK_RAW_D (int ,int ) ;
 int Q ;
 int R ;

TFtype __extenddftf2(DFtype a)
{
  FP_DECL_EX;
  FP_DECL_D(A);
  FP_DECL_Q(R);
  TFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_RAW_D(A, a);



  FP_EXTEND(Q,D,2,1,R,A);

  FP_PACK_RAW_Q(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
