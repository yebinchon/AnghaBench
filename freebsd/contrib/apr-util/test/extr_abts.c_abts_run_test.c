
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int (* test_func ) (TYPE_1__*,void*) ;
struct TYPE_10__ {int failed; int num_test; int name; } ;
typedef TYPE_2__ sub_suite ;
struct TYPE_11__ {TYPE_2__* tail; } ;
typedef TYPE_3__ abts_suite ;
struct TYPE_9__ {scalar_t__ failed; TYPE_2__* suite; } ;
typedef TYPE_1__ abts_case ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int should_test_run (int ) ;
 int update_status () ;

void abts_run_test(abts_suite *ts, test_func f, void *value)
{
    abts_case *tc;
    sub_suite *ss;

    if (!should_test_run(ts->tail->name)) {
        return;
    }
    ss = ts->tail;

    tc = malloc(sizeof(*tc));
    tc->failed = 0;
    tc->suite = ss;

    ss->num_test++;
    update_status();

    f(tc, value);

    if (tc->failed) {
        ss->failed++;
    }
    free(tc);
}
