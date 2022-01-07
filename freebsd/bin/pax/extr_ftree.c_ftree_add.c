
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* fname; int chflg; struct TYPE_4__* fow; scalar_t__ refcnt; } ;
typedef TYPE_1__ FTREE ;


 TYPE_1__* fthead ;
 TYPE_1__* fttail ;
 scalar_t__ malloc (int) ;
 int paxwarn (int ,char*) ;
 int strlen (char*) ;

int
ftree_add(char *str, int chflg)
{
 FTREE *ft;
 int len;




 if ((str == ((void*)0)) || (*str == '\0')) {
  paxwarn(0, "Invalid file name argument");
  return(-1);
 }






 if ((ft = (FTREE *)malloc(sizeof(FTREE))) == ((void*)0)) {
  paxwarn(0, "Unable to allocate memory for filename");
  return(-1);
 }

 if (((len = strlen(str) - 1) > 0) && (str[len] == '/'))
  str[len] = '\0';
 ft->fname = str;
 ft->refcnt = 0;
 ft->chflg = chflg;
 ft->fow = ((void*)0);
 if (fthead == ((void*)0)) {
  fttail = fthead = ft;
  return(0);
 }
 fttail->fow = ft;
 fttail = ft;
 return(0);
}
