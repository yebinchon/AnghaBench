
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {int f_mntonname; int f_fstypename; } ;


 int MNT_WAIT ;
 scalar_t__ checkvfsname (int ,char const**) ;
 size_t getmntinfo (struct statfs**,int ) ;
 scalar_t__ nflag ;
 int statfs (int ,struct statfs*) ;
 int xo_warnx (char*,int ) ;

__attribute__((used)) static size_t
regetmntinfo(struct statfs **mntbufp, long mntsize, const char **vfslist)
{
 int error, i, j;
 struct statfs *mntbuf;

 if (vfslist == ((void*)0))
  return (nflag ? mntsize : getmntinfo(mntbufp, MNT_WAIT));

 mntbuf = *mntbufp;
 for (j = 0, i = 0; i < mntsize; i++) {
  if (checkvfsname(mntbuf[i].f_fstypename, vfslist))
   continue;






  error = statfs(mntbuf[i].f_mntonname, &mntbuf[j]);
  if (nflag || error < 0)
   if (i != j) {
    if (error < 0)
     xo_warnx("%s stats possibly stale",
         mntbuf[i].f_mntonname);
    mntbuf[j] = mntbuf[i];
   }
  j++;
 }
 return (j);
}
