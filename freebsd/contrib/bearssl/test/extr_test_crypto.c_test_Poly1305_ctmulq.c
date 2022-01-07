
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ br_poly1305_run ;


 int br_poly1305_ctmul_run ;
 scalar_t__ br_poly1305_ctmulq_get () ;
 int printf (char*) ;
 int test_Poly1305_inner (char*,scalar_t__,int *) ;

__attribute__((used)) static void
test_Poly1305_ctmulq(void)
{
 br_poly1305_run bp;

 bp = br_poly1305_ctmulq_get();
 if (bp == 0) {
  printf("Test Poly1305_ctmulq: UNAVAILABLE\n");
 } else {
  test_Poly1305_inner("Poly1305_ctmulq", bp,
   &br_poly1305_ctmul_run);
 }
}
