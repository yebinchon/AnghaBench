
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ TCase ;


 scalar_t__ calloc (int,int) ;

TCase *
tcase_create(const char *name)
{
    TCase *tc = (TCase *) calloc(1, sizeof(TCase));
    if (tc != ((void*)0)) {
        tc->name = name;
    }
    return tc;
}
