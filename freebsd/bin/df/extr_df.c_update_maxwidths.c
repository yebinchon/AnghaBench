
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_ffree; scalar_t__ f_files; int f_bsize; scalar_t__ f_bavail; scalar_t__ f_bfree; scalar_t__ f_blocks; int f_fstypename; int f_mntfromname; } ;
struct maxwidths {void* ifree; void* iused; void* avail; void* used; void* total; void* fstype; void* mntfrom; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ fsbtoblk (scalar_t__,int ,long) ;
 int getbsize (int*,long*) ;
 void* imax (void*,int) ;
 int int64width (scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
update_maxwidths(struct maxwidths *mwp, const struct statfs *sfsp)
{
 static long blocksize = 0;
 int dummy;

 if (blocksize == 0)
  getbsize(&dummy, &blocksize);

 mwp->mntfrom = imax(mwp->mntfrom, (int)strlen(sfsp->f_mntfromname));
 mwp->fstype = imax(mwp->fstype, (int)strlen(sfsp->f_fstypename));
 mwp->total = imax(mwp->total, int64width(
     fsbtoblk((int64_t)sfsp->f_blocks, sfsp->f_bsize, blocksize)));
 mwp->used = imax(mwp->used,
     int64width(fsbtoblk((int64_t)sfsp->f_blocks -
     (int64_t)sfsp->f_bfree, sfsp->f_bsize, blocksize)));
 mwp->avail = imax(mwp->avail, int64width(fsbtoblk(sfsp->f_bavail,
     sfsp->f_bsize, blocksize)));
 mwp->iused = imax(mwp->iused, int64width((int64_t)sfsp->f_files -
     sfsp->f_ffree));
 mwp->ifree = imax(mwp->ifree, int64width(sfsp->f_ffree));
}
