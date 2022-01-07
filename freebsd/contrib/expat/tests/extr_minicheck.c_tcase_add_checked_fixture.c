
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tcase_teardown_function ;
typedef int tcase_setup_function ;
struct TYPE_3__ {int teardown; int setup; } ;
typedef TYPE_1__ TCase ;


 int assert (int ) ;

void
tcase_add_checked_fixture(TCase *tc,
                          tcase_setup_function setup,
                          tcase_teardown_function teardown)
{
    assert(tc != ((void*)0));
    tc->setup = setup;
    tc->teardown = teardown;
}
