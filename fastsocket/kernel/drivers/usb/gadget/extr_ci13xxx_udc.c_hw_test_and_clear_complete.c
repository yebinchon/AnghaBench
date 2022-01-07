
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int CAP_ENDPTCOMPLETE ;
 int hw_ctest_and_clear (int ,int ) ;

__attribute__((used)) static int hw_test_and_clear_complete(int n)
{
 return hw_ctest_and_clear(CAP_ENDPTCOMPLETE, BIT(n));
}
