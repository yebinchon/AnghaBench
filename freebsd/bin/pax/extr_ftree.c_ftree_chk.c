
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcnt; char* fname; scalar_t__ chflg; struct TYPE_3__* fow; } ;
typedef TYPE_1__ FTREE ;


 int atdir_end () ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__* fthead ;
 int paxwarn (int,char*) ;
 int stderr ;
 scalar_t__ tflag ;

void
ftree_chk(void)
{
 FTREE *ft;
 int wban = 0;




 if (tflag)
  atdir_end();





 for (ft = fthead; ft != ((void*)0); ft = ft->fow) {
  if ((ft->refcnt > 0) || ft->chflg)
   continue;
  if (wban == 0) {
   paxwarn(1,"WARNING! These file names were not selected:");
   ++wban;
  }
  (void)fprintf(stderr, "%s\n", ft->fname);
 }
}
