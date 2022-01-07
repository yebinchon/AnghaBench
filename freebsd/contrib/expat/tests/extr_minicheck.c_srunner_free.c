
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int suite; } ;
typedef TYPE_1__ SRunner ;


 int free (TYPE_1__*) ;
 int suite_free (int ) ;

void
srunner_free(SRunner *runner)
{
    if (! runner) {
        return;
    }

    suite_free(runner->suite);
    free(runner);
}
