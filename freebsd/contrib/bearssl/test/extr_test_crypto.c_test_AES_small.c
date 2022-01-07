
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_aes_small_cbcdec_vtable ;
 int br_aes_small_cbcenc_vtable ;
 int br_aes_small_ctr_vtable ;
 int test_AES_generic (char*,int *,int *,int *,int,int) ;

__attribute__((used)) static void
test_AES_small(void)
{
 test_AES_generic("AES_small",
  &br_aes_small_cbcenc_vtable,
  &br_aes_small_cbcdec_vtable,
  &br_aes_small_ctr_vtable,
  1, 1);
}
