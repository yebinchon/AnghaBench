
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReturnStatus ;
typedef int Lst ;


 int FAILURE ;
 scalar_t__ FALSE ;
 scalar_t__ LstValid (int ) ;
 int Lst_InsertAfter (int ,int ,void*) ;
 int Lst_Last (int ) ;

ReturnStatus
Lst_EnQueue(Lst l, void *d)
{
    if (LstValid (l) == FALSE) {
 return (FAILURE);
    }

    return (Lst_InsertAfter(l, Lst_Last(l), d));
}
