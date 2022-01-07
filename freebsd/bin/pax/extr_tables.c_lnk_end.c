
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* fow; } ;
typedef TYPE_1__ HRDLNK ;


 int L_TAB_SZ ;
 int free (TYPE_1__*) ;
 TYPE_1__** ltab ;

void
lnk_end(void)
{
 int i;
 HRDLNK *pt;
 HRDLNK *ppt;

 if (ltab == ((void*)0))
  return;

 for (i = 0; i < L_TAB_SZ; ++i) {
  if (ltab[i] == ((void*)0))
   continue;
  pt = ltab[i];
  ltab[i] = ((void*)0);




  while (pt != ((void*)0)) {
   ppt = pt;
   pt = ppt->fow;
   free(ppt->name);
   free(ppt);
  }
 }
 return;
}
