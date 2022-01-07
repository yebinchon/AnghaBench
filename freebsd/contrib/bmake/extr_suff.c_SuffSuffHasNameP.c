
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Suff ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int
SuffSuffHasNameP(const void *s, const void *sname)
{
    return (strcmp(sname, ((const Suff *)s)->name));
}
