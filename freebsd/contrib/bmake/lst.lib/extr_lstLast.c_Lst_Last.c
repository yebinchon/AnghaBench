
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lastPtr; } ;
typedef int * LstNode ;
typedef TYPE_1__* Lst ;


 scalar_t__ LstIsEmpty (TYPE_1__*) ;
 int LstValid (TYPE_1__*) ;

LstNode
Lst_Last(Lst l)
{
    if (!LstValid(l) || LstIsEmpty (l)) {
 return ((void*)0);
    } else {
 return (l->lastPtr);
    }
}
