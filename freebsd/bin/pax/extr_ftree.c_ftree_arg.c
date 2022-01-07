
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fname; scalar_t__ chflg; struct TYPE_3__* fow; } ;


 scalar_t__ PAXPATHLEN ;
 scalar_t__ chdir (int ) ;
 int cwdfd ;
 int errno ;
 int * farray ;
 scalar_t__ fchdir (int ) ;
 int * fgets (int ,scalar_t__,int ) ;
 TYPE_1__* ftcur ;
 TYPE_1__* fthead ;
 int fts_close (int *) ;
 int * fts_open (int *,int ,int *) ;
 int ftsopts ;
 int * ftsp ;
 int stdin ;
 char* strchr (int ,char) ;
 int syswarn (int,int ,char*,...) ;

__attribute__((used)) static int
ftree_arg(void)
{
 char *pt;




 if (ftsp != ((void*)0)) {
  (void)fts_close(ftsp);
  ftsp = ((void*)0);
 }





 for(;;) {
  if (fthead == ((void*)0)) {




   if (fgets(farray[0], PAXPATHLEN+1, stdin) == ((void*)0))
    return(-1);
   if ((pt = strchr(farray[0], '\n')) != ((void*)0))
    *pt = '\0';
  } else {



   if (ftcur == ((void*)0))
    ftcur = fthead;
   else if ((ftcur = ftcur->fow) == ((void*)0))
    return(-1);
   if (ftcur->chflg) {

    if (fchdir(cwdfd) < 0) {
     syswarn(1, errno,
       "Can't fchdir to starting directory");
     return(-1);
    }
    if (chdir(ftcur->fname) < 0) {
     syswarn(1, errno, "Can't chdir to %s",
         ftcur->fname);
     return(-1);
    }
    continue;
   } else
    farray[0] = ftcur->fname;
  }
  if ((ftsp = fts_open(farray, ftsopts, ((void*)0))) != ((void*)0))
   break;
 }
 return(0);
}
