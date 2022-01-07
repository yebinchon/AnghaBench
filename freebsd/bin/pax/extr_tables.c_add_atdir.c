
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
typedef void* time_t ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
struct TYPE_4__ {scalar_t__ ino; scalar_t__ dev; struct TYPE_4__* fow; void* atime; void* mtime; int * name; } ;
typedef TYPE_1__ ATDIR ;


 unsigned int A_TAB_SZ ;
 TYPE_1__** atab ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*) ;
 int * strdup (char*) ;

void
add_atdir(char *fname, dev_t dev, ino_t ino, time_t mtime, time_t atime)
{
 ATDIR *pt;
 u_int indx;

 if (atab == ((void*)0))
  return;
 indx = ((unsigned)ino) % A_TAB_SZ;
 if ((pt = atab[indx]) != ((void*)0)) {
  while (pt != ((void*)0)) {
   if ((pt->ino == ino) && (pt->dev == dev))
    break;
   pt = pt->fow;
  }




  if (pt != ((void*)0))
   return;
 }




 if ((pt = (ATDIR *)malloc(sizeof(ATDIR))) != ((void*)0)) {
  if ((pt->name = strdup(fname)) != ((void*)0)) {
   pt->dev = dev;
   pt->ino = ino;
   pt->mtime = mtime;
   pt->atime = atime;
   pt->fow = atab[indx];
   atab[indx] = pt;
   return;
  }
  free(pt);
 }

 paxwarn(1, "Directory access time reset table ran out of memory");
 return;
}
