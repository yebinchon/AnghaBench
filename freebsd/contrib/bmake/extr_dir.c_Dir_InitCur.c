
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refCount; } ;
typedef TYPE_1__ Path ;


 TYPE_1__* Dir_AddDir (int *,char const*) ;
 int Dir_Destroy (TYPE_1__*) ;
 TYPE_1__* cur ;

void
Dir_InitCur(const char *cdname)
{
    Path *p;

    if (cdname != ((void*)0)) {




 if ((p = Dir_AddDir(((void*)0), cdname))) {
     p->refCount += 1;
     if (cur && cur != p) {



  cur->refCount -= 1;
  Dir_Destroy(cur);
     }
     cur = p;
 }
    }
}
