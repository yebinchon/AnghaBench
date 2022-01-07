
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_block_ctrcbc_class ;


 int * br_aes_x86ni_ctrcbc_get_vtable () ;
 int printf (char*) ;
 int test_AES_CTRCBC_inner (char*,int const*) ;

__attribute__((used)) static void
test_AES_CTRCBC_x86ni(void)
{
 const br_block_ctrcbc_class *vt;

 vt = br_aes_x86ni_ctrcbc_get_vtable();
 if (vt != ((void*)0)) {
  test_AES_CTRCBC_inner("x86ni", vt);
 } else {
  printf("Test AES CTR/CBC-MAC x86ni: UNAVAILABLE\n");
 }
}
