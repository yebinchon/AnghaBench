
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;
typedef int Boolean ;


 scalar_t__ LstIsEmpty (int ) ;
 int LstValid (int ) ;

Boolean
Lst_IsEmpty(Lst l)
{
    return ( ! LstValid (l) || LstIsEmpty(l));
}
