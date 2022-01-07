
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DFtype ;


 int A ;
 int B ;
 int FP_CMP_UNORD_D (int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_UNPACK_RAW_D (int ,int ) ;

int
__unorddf2(DFtype a, DFtype b)
{
  FP_DECL_D(A); FP_DECL_D(B);
  int r;

  FP_UNPACK_RAW_D(A, a);
  FP_UNPACK_RAW_D(B, b);
  FP_CMP_UNORD_D(r, A, B);

  return r;
}
