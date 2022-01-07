
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tests; } ;
struct TYPE_5__ {struct TYPE_5__* next_tcase; } ;
typedef TYPE_1__ TCase ;
typedef TYPE_2__ Suite ;


 int assert (int ) ;

void
suite_add_tcase(Suite *suite, TCase *tc)
{
    assert(suite != ((void*)0));
    assert(tc != ((void*)0));
    assert(tc->next_tcase == ((void*)0));

    tc->next_tcase = suite->tests;
    suite->tests = tc;
}
