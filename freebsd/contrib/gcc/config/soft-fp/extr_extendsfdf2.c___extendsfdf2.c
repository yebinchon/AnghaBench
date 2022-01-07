
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
 int FP_EXTEND (int ,int ,int,int,int ,int ) ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_INIT_ROUNDMODE ;
 int FP_PACK_RAW_D (int ,int ) ;
 int FP_UNPACK_RAW_S (int ,int ) ;
 int R ;
 int S ;

DFtype __extendsfdf2(SFtype a)
{
  FP_DECL_EX;
  FP_DECL_S(A);
  FP_DECL_D(R);
  DFtype r;

  FP_INIT_ROUNDMODE;
  FP_UNPACK_RAW_S(A, a);



  FP_EXTEND(D,S,1,1,R,A);

  FP_PACK_RAW_D(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
