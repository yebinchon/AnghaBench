
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct conf {int dummy; } ;
struct TYPE_4__ {size_t cs_n; int * cs_c; } ;
struct TYPE_3__ {size_t cs_n; int * cs_c; } ;


 int free (struct conf**) ;
 TYPE_2__ lconf ;
 TYPE_1__ rconf ;
 int run_flush (struct conf*) ;
 int uniqueadd (struct conf***,size_t*,size_t*,int *) ;

__attribute__((used)) static void
rules_flush(void)
{
 struct conf **list;
 size_t nlist, mlist;

 list = ((void*)0);
 mlist = nlist = 0;
 for (size_t i = 0; i < rconf.cs_n; i++)
  uniqueadd(&list, &nlist, &mlist, &rconf.cs_c[i]);
 for (size_t i = 0; i < lconf.cs_n; i++)
  uniqueadd(&list, &nlist, &mlist, &lconf.cs_c[i]);

 for (size_t i = 0; i < nlist; i++)
  run_flush(list[i]);
 free(list);
}
