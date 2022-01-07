
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_chacha20_sse2_get () ;
 int test_ChaCha20_generic (char*,int ) ;

__attribute__((used)) static void
test_ChaCha20_sse2(void)
{
 test_ChaCha20_generic("ChaCha20_sse2", br_chacha20_sse2_get());
}
