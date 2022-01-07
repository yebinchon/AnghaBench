
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ br_ghash ;


 scalar_t__ br_ghash_pwr8_get () ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;
 int test_speed_ghash_inner (char*,scalar_t__) ;

__attribute__((used)) static void
test_speed_ghash_pwr8(void)
{
 br_ghash gh;

 gh = br_ghash_pwr8_get();
 if (gh == 0) {
  printf("%-30s UNAVAILABLE\n", "GHASH (pwr8)");
  fflush(stdout);
 } else {
  test_speed_ghash_inner("GHASH (pwr8)", gh);
 }
}
