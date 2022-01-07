
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ec_impl ;
typedef int br_ec_curve_def ;


 int sprintf (char*,char*,char const*) ;
 int test_speed_ec_inner_1 (char const*,int const*,int const*) ;
 int test_speed_ec_inner_2 (char*,int const*,int const*) ;

__attribute__((used)) static void
test_speed_ec_inner(const char *name,
 const br_ec_impl *impl, const br_ec_curve_def *cd)
{
 char tmp[50];

 test_speed_ec_inner_1(name, impl, cd);
 sprintf(tmp, "%s (FP)", name);
 test_speed_ec_inner_2(tmp, impl, cd);
}
