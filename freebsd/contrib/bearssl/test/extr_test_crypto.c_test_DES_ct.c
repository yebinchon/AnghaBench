
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_des_ct_cbcdec_vtable ;
 int br_des_ct_cbcenc_vtable ;
 int test_DES_generic (char*,int *,int *,int,int) ;

__attribute__((used)) static void
test_DES_ct(void)
{
 test_DES_generic("DES_ct",
  &br_des_ct_cbcenc_vtable,
  &br_des_ct_cbcdec_vtable,
  1, 1);
}
