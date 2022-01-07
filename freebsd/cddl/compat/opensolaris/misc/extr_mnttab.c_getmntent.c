
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int dummy; } ;
struct mnttab {int dummy; } ;
typedef int FILE ;


 int SEEK_CUR ;
 int allfs ;
 int errno ;
 int fileno (int *) ;
 int * gsfs ;
 int lseek (int ,int,int ) ;
 int statfs2mnttab (int *,struct mnttab*) ;
 int statfs_init () ;

int
getmntent(FILE *fp, struct mnttab *mp)
{
 struct statfs *sfs;
 int error, nfs;

 nfs = (int)lseek(fileno(fp), 0, SEEK_CUR);
 if (nfs == -1)
  return (errno);

 if (nfs == 0 || gsfs == ((void*)0)) {
  error = statfs_init();
  if (error != 0)
   return (error);
 }
 if (nfs >= allfs)
  return (-1);
 statfs2mnttab(&gsfs[nfs], mp);
 if (lseek(fileno(fp), 1, SEEK_CUR) == -1)
  return (errno);
 return (0);
}
