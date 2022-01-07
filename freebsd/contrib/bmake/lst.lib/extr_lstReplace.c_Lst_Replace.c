
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* datum; } ;
typedef int ReturnStatus ;
typedef TYPE_1__* LstNode ;


 int FAILURE ;
 int SUCCESS ;

ReturnStatus
Lst_Replace(LstNode ln, void *d)
{
    if (ln == ((void*)0)) {
 return (FAILURE);
    } else {
 (ln)->datum = d;
 return (SUCCESS);
    }
}
