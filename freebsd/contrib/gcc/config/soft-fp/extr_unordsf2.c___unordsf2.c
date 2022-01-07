
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SFtype ;


 int A ;
 int B ;
 int FP_CMP_UNORD_S (int,int ,int ) ;
 int FP_DECL_S (int ) ;
 int FP_UNPACK_RAW_S (int ,int ) ;

int
__unordsf2(SFtype a, SFtype b)
{
  FP_DECL_S(A);
  FP_DECL_S(B);
  int r;

  FP_UNPACK_RAW_S(A, a);
  FP_UNPACK_RAW_S(B, b);
  FP_CMP_UNORD_S(r, A, B);

  return r;
}
