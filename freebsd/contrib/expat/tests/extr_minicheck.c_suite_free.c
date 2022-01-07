
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* tests; } ;
struct TYPE_6__ {struct TYPE_6__* next_tcase; } ;
typedef TYPE_1__ TCase ;
typedef TYPE_2__ Suite ;


 int free (TYPE_2__*) ;
 int tcase_free (TYPE_1__*) ;

__attribute__((used)) static void
suite_free(Suite *suite)
{
    if (! suite) {
        return;
    }

    while (suite->tests != ((void*)0)) {
        TCase *next = suite->tests->next_tcase;
        tcase_free(suite->tests);
        suite->tests = next;
    }
    free(suite);
}
