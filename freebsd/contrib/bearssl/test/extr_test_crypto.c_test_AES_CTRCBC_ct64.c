
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_aes_ct64_ctrcbc_vtable ;
 int test_AES_CTRCBC_inner (char*,int *) ;

__attribute__((used)) static void
test_AES_CTRCBC_ct64(void)
{
 test_AES_CTRCBC_inner("ct64", &br_aes_ct64_ctrcbc_vtable);
}
