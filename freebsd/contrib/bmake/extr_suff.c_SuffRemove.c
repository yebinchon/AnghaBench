
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refCount; } ;
typedef TYPE_1__ Suff ;
typedef int Lst ;


 int SuffFree (TYPE_1__*) ;
 int SuffUnRef (int ,TYPE_1__*) ;
 int sufflist ;

__attribute__((used)) static void
SuffRemove(Lst l, Suff *s)
{
    SuffUnRef(l, s);
    if (s->refCount == 0) {
 SuffUnRef(sufflist, s);
 SuffFree(s);
    }
}
