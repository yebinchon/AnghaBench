
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fow; } ;
typedef TYPE_1__ OPLIST ;


 TYPE_1__* ophead ;

OPLIST *
opt_next(void)
{
 OPLIST *opt;

 if ((opt = ophead) != ((void*)0))
  ophead = ophead->fow;
 return(opt);
}
