
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* datum; } ;
typedef TYPE_1__* LstNode ;



void *
Lst_Datum(LstNode ln)
{
    if (ln != ((void*)0)) {
 return ((ln)->datum);
    } else {
 return ((void*)0);
    }
}
