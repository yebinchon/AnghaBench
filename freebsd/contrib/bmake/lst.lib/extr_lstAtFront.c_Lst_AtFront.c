
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReturnStatus ;
typedef int LstNode ;
typedef int Lst ;


 int Lst_First (int ) ;
 int Lst_InsertBefore (int ,int ,void*) ;

ReturnStatus
Lst_AtFront(Lst l, void *d)
{
    LstNode front;

    front = Lst_First(l);
    return (Lst_InsertBefore(l, front, d));
}
