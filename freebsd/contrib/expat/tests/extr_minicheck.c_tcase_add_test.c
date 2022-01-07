
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tcase_test_function ;
struct TYPE_3__ {int allocated; int ntests; int * tests; } ;
typedef TYPE_1__ TCase ;


 int assert (int ) ;
 int * realloc (int *,size_t) ;

void
tcase_add_test(TCase *tc, tcase_test_function test)
{
    assert(tc != ((void*)0));
    if (tc->allocated == tc->ntests) {
        int nalloc = tc->allocated + 100;
        size_t new_size = sizeof(tcase_test_function) * nalloc;
        tcase_test_function *new_tests = realloc(tc->tests, new_size);
        assert(new_tests != ((void*)0));
        tc->tests = new_tests;
        tc->allocated = nalloc;
    }
    tc->tests[tc->ntests] = test;
    tc->ntests++;
}
