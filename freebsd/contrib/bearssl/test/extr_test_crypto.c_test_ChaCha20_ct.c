
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_chacha20_ct_run ;
 int test_ChaCha20_generic (char*,int *) ;

__attribute__((used)) static void
test_ChaCha20_ct(void)
{
 test_ChaCha20_generic("ChaCha20_ct", &br_chacha20_ct_run);
}
