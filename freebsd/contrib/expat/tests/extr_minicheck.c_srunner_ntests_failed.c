
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nfailures; } ;
typedef TYPE_1__ SRunner ;


 int assert (int ) ;

int
srunner_ntests_failed(SRunner *runner)
{
    assert(runner != ((void*)0));
    return runner->nfailures;
}
