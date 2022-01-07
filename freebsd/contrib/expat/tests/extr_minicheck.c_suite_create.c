
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ Suite ;


 scalar_t__ calloc (int,int) ;

Suite *
suite_create(const char *name)
{
    Suite *suite = (Suite *) calloc(1, sizeof(Suite));
    if (suite != ((void*)0)) {
        suite->name = name;
    }
    return suite;
}
