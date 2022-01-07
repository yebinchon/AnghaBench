
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refCount; } ;


 int Dir_ClearPath (int ) ;
 int Dir_Destroy (TYPE_1__*) ;
 int Hash_DeleteTable (int *) ;
 int Lst_Destroy (int ,int *) ;
 TYPE_1__* cur ;
 int dirSearchPath ;
 TYPE_1__* dot ;
 TYPE_1__* dotLast ;
 int mtimes ;
 int openDirectories ;

void
Dir_End(void)
{
}
