
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ br_ghash ;


 scalar_t__ br_ghash_pclmul_get () ;
 int printf (char*) ;
 int test_GHASH (char*,scalar_t__) ;

__attribute__((used)) static void
test_GHASH_pclmul(void)
{
 br_ghash gh;

 gh = br_ghash_pclmul_get();
 if (gh == 0) {
  printf("Test GHASH_pclmul: UNAVAILABLE\n");
 } else {
  test_GHASH("GHASH_pclmul", gh);
 }
}
