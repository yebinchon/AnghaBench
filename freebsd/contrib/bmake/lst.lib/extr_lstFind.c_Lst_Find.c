
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LstNode ;
typedef int Lst ;


 int Lst_FindFrom (int ,int ,void const*,int (*) (void const*,void const*)) ;
 int Lst_First (int ) ;

LstNode
Lst_Find(Lst l, const void *d, int (*cProc)(const void *, const void *))
{
    return (Lst_FindFrom(l, Lst_First(l), d, cProc));
}
