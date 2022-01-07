
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFtype ;


 int A ;
 int B ;
 int FP_CMP_UNORD_Q (int,int ,int ) ;
 int FP_DECL_Q (int ) ;
 int FP_UNPACK_RAW_Q (int ,int ) ;

int
__unordtf2(TFtype a, TFtype b)
{
  FP_DECL_Q(A);
  FP_DECL_Q(B);
  int r;

  FP_UNPACK_RAW_Q(A, a);
  FP_UNPACK_RAW_Q(B, b);
  FP_CMP_UNORD_Q(r, A, B);

  return r;
}
