
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_ghash_ctmul64 ;
 int test_speed_ghash_inner (char*,int *) ;

__attribute__((used)) static void
test_speed_ghash_ctmul64(void)
{
 test_speed_ghash_inner("GHASH (ctmul64)", &br_ghash_ctmul64);
}
