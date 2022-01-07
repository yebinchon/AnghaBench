
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ghash_ctmul64 ;
 int test_GHASH (char*,int ) ;

__attribute__((used)) static void
test_GHASH_ctmul64(void)
{
 test_GHASH("GHASH_ctmul64", br_ghash_ctmul64);
}
