
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Suff ;


 int * SuffStrIsPrefix (int ,void const*) ;

__attribute__((used)) static int
SuffSuffIsPrefix(const void *s, const void *str)
{
    return SuffStrIsPrefix(((const Suff *)s)->name, str) == ((void*)0);
}
