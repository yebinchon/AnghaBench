
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ st_mtime; } ;
struct TYPE_9__ {int nlen; TYPE_1__ sb; int name; } ;
struct TYPE_8__ {int namelen; scalar_t__ seek; scalar_t__ mtime; struct TYPE_8__* fow; } ;
typedef TYPE_2__ FTM ;
typedef TYPE_3__ ARCHD ;


 int F_TAB_SZ ;
 int PAXPATHLEN ;
 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 int ffd ;
 int free (TYPE_2__*) ;
 TYPE_2__** ftab ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*) ;
 int read (int ,char*,int) ;
 size_t st_hash (int ,int,int ) ;
 int strncmp (char*,int ,int) ;
 int syswarn (int,int ,char*) ;
 int write (int ,int ,int) ;

int
chk_ftime(ARCHD *arcn)
{
 FTM *pt;
 int namelen;
 u_int indx;
 char ckname[PAXPATHLEN+1];




 if (ftab == ((void*)0))
  return(0);




 namelen = arcn->nlen;
 indx = st_hash(arcn->name, namelen, F_TAB_SZ);
 if ((pt = ftab[indx]) != ((void*)0)) {





  while (pt != ((void*)0)) {
   if (pt->namelen == namelen) {




    if (lseek(ffd,pt->seek,SEEK_SET) != pt->seek) {
     syswarn(1, errno,
         "Failed ftime table seek");
     return(-1);
    }
    if (read(ffd, ckname, namelen) != namelen) {
     syswarn(1, errno,
         "Failed ftime table read");
     return(-1);
    }




    if (!strncmp(ckname, arcn->name, namelen))
     break;
   }




   pt = pt->fow;
  }

  if (pt != ((void*)0)) {



   if (arcn->sb.st_mtime > pt->mtime) {



    pt->mtime = arcn->sb.st_mtime;
    return(0);
   }



   return(1);
  }
 }




 if ((pt = (FTM *)malloc(sizeof(FTM))) != ((void*)0)) {




  if ((pt->seek = lseek(ffd, (off_t)0, SEEK_END)) >= 0) {
   if (write(ffd, arcn->name, namelen) == namelen) {
    pt->mtime = arcn->sb.st_mtime;
    pt->namelen = namelen;
    pt->fow = ftab[indx];
    ftab[indx] = pt;
    return(0);
   }
   syswarn(1, errno, "Failed write to file time table");
  } else
   syswarn(1, errno, "Failed seek on file time table");
 } else
  paxwarn(1, "File time table ran out of memory");

 if (pt != ((void*)0))
  free(pt);
 return(-1);
}
