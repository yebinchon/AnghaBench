
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (int,int) ;

void
atf_require_equal_inside_if(void)
{




    if (1)
        ATF_REQUIRE_EQ(1, 1);
    else
        ATF_REQUIRE_EQ(1, 1);
}
