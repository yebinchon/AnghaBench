
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CAP_ENDPTSETUPSTAT ;
 int hw_ctest_and_clear (int ,int ) ;

__attribute__((used)) static int hw_test_and_clear_setup_status(int n)
{
 return hw_ctest_and_clear(CAP_ENDPTSETUPSTAT, BIT(n));
}
