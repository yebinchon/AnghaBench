
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Options ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_opts(const void *a, const void *b)
{
    Options *const *p = (Options * const *) a;
    Options *const *q = (Options * const *) b;
    return strcmp((*p)->name, (*q)->name);
}
