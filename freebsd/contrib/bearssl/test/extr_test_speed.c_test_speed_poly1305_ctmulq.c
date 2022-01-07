
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ br_poly1305_run ;


 scalar_t__ br_poly1305_ctmulq_get () ;
 int printf (char*,char*) ;
 int test_speed_poly1305_inner (char*,scalar_t__) ;

__attribute__((used)) static void
test_speed_poly1305_ctmulq(void)
{
 br_poly1305_run bp;

 bp = br_poly1305_ctmulq_get();
 if (bp == 0) {
  printf("%-30s UNAVAILABLE\n", "Poly1305 (ctmulq)");
 } else {
  test_speed_poly1305_inner("Poly1305 (ctmulq)", bp);
 }
}
