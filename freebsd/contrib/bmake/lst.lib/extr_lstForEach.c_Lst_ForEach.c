
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 int Lst_First (int ) ;
 int Lst_ForEachFrom (int ,int ,int (*) (void*,void*),void*) ;

int
Lst_ForEach(Lst l, int (*proc)(void *, void *), void *d)
{
    return Lst_ForEachFrom(l, Lst_First(l), proc, d);
}
