
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReturnStatus ;
typedef int LstNode ;
typedef int Lst ;


 int Lst_InsertAfter (int ,int ,void*) ;
 int Lst_Last (int ) ;

ReturnStatus
Lst_AtEnd(Lst l, void *d)
{
    LstNode end;

    end = Lst_Last(l);
    return (Lst_InsertAfter(l, end, d));
}
