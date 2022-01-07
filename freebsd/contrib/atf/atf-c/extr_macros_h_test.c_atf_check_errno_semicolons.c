
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_ERRNO (int,int) ;

void
atf_check_errno_semicolons(void)
{


    ATF_CHECK_ERRNO(1, 1 == 1);
    ATF_CHECK_ERRNO(2, 2 == 2);
}
