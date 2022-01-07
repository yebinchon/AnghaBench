
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* s; struct TYPE_4__* next; } ;
typedef TYPE_1__ namelist ;
struct TYPE_5__ {TYPE_1__* nlist; } ;


 int free (TYPE_1__*) ;
 int psymb ;
 TYPE_2__* val ;

__attribute__((used)) static void
YYDESTRUCT_DECL()
{
    switch (psymb)
    {
 case 263:
 {
    namelist *p = (*val).nlist;
    while (p != ((void*)0))
    { namelist *pp = p;
      p = p->next;
      free(pp->s); free(pp);
    }
  }
 break;
 }
}
