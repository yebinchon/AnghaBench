
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * curPtr; int atEnd; int isOpen; } ;
typedef int ReturnStatus ;
typedef TYPE_1__* Lst ;


 int FAILURE ;
 scalar_t__ FALSE ;
 int Head ;
 scalar_t__ LstIsEmpty (TYPE_1__*) ;
 scalar_t__ LstValid (TYPE_1__*) ;
 int SUCCESS ;
 int TRUE ;
 int Unknown ;

ReturnStatus
Lst_Open(Lst l)
{
 if (LstValid (l) == FALSE) {
  return (FAILURE);
 }
 (l)->isOpen = TRUE;
 (l)->atEnd = LstIsEmpty (l) ? Head : Unknown;
 (l)->curPtr = ((void*)0);

 return (SUCCESS);
}
