
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ failed; int num_test; } ;
typedef TYPE_1__ sub_suite ;
struct TYPE_5__ {TYPE_1__* tail; } ;
typedef TYPE_2__ abts_suite ;


 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int quiet ;
 int stdout ;

__attribute__((used)) static void end_suite(abts_suite *suite)
{
    if (suite != ((void*)0)) {
        sub_suite *last = suite->tail;
        if (!quiet) {
            fprintf(stdout, "\b");
            fflush(stdout);
        }
        if (last->failed == 0) {
            fprintf(stdout, "SUCCESS\n");
            fflush(stdout);
        }
        else {
            fprintf(stdout, "FAILED %d of %d\n", last->failed, last->num_test);
            fflush(stdout);
        }
    }
}
