
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ghash_ctmul ;
 int test_GHASH (char*,int ) ;

__attribute__((used)) static void
test_GHASH_ctmul(void)
{
 test_GHASH("GHASH_ctmul", br_ghash_ctmul);
}
