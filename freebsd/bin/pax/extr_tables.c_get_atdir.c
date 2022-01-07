
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
typedef int time_t ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
struct TYPE_4__ {scalar_t__ ino; scalar_t__ dev; struct TYPE_4__* name; int atime; int mtime; struct TYPE_4__* fow; } ;
typedef TYPE_1__ ATDIR ;


 unsigned int A_TAB_SZ ;
 TYPE_1__** atab ;
 int free (TYPE_1__*) ;

int
get_atdir(dev_t dev, ino_t ino, time_t *mtime, time_t *atime)
{
 ATDIR *pt;
 ATDIR **ppt;
 u_int indx;

 if (atab == ((void*)0))
  return(-1);



 indx = ((unsigned)ino) % A_TAB_SZ;
 if ((pt = atab[indx]) == ((void*)0))
  return(-1);

 ppt = &(atab[indx]);
 while (pt != ((void*)0)) {
  if ((pt->ino == ino) && (pt->dev == dev))
   break;



  ppt = &(pt->fow);
  pt = pt->fow;
 }




 if (pt == ((void*)0))
  return(-1);




 *ppt = pt->fow;
 *mtime = pt->mtime;
 *atime = pt->atime;
 free(pt->name);
 free(pt);
 return(0);
}
