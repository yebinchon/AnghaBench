
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntonname; int f_mntfromname; } ;


 int MNT_NOWAIT ;
 size_t getmntinfo (struct statfs**,int ) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static char *
getmntpt(const char *name)
{
 size_t mntsize, i;
 struct statfs *mntbuf;

 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = 0; i < mntsize; i++) {
  if (!strcmp(mntbuf[i].f_mntfromname, name))
   return (mntbuf[i].f_mntonname);
 }
 return (((void*)0));
}
