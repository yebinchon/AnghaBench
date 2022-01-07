
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atime; int mtime; int name; struct TYPE_3__* fow; } ;
typedef TYPE_1__ ATDIR ;


 int A_TAB_SZ ;
 TYPE_1__** atab ;
 int set_ftime (int ,int ,int ,int) ;

void
atdir_end(void)
{
 ATDIR *pt;
 int i;

 if (atab == ((void*)0))
  return;




 for (i = 0; i < A_TAB_SZ; ++i) {
  if ((pt = atab[i]) == ((void*)0))
   continue;





  for (; pt != ((void*)0); pt = pt->fow)
   set_ftime(pt->name, pt->mtime, pt->atime, 1);
 }
}
