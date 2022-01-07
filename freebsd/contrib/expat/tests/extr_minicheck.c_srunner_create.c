
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * suite; } ;
typedef int Suite ;
typedef TYPE_1__ SRunner ;


 TYPE_1__* calloc (int,int) ;

SRunner *
srunner_create(Suite *suite)
{
    SRunner *runner = calloc(1, sizeof(SRunner));
    if (runner != ((void*)0)) {
        runner->suite = suite;
    }
    return runner;
}
