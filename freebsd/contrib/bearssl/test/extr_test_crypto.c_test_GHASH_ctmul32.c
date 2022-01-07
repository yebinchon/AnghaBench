
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ghash_ctmul32 ;
 int test_GHASH (char*,int ) ;

__attribute__((used)) static void
test_GHASH_ctmul32(void)
{
 test_GHASH("GHASH_ctmul32", br_ghash_ctmul32);
}
