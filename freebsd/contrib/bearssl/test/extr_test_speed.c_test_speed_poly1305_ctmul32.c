
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_poly1305_ctmul32_run ;
 int test_speed_poly1305_inner (char*,int *) ;

__attribute__((used)) static void
test_speed_poly1305_ctmul32(void)
{
 test_speed_poly1305_inner("Poly1305 (ctmul32)",
  &br_poly1305_ctmul32_run);
}
