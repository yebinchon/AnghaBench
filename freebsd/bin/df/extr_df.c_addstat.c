
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct statfs {int f_bsize; int f_blocks; int f_bfree; int f_bavail; scalar_t__ f_ffree; scalar_t__ f_files; } ;



__attribute__((used)) static void
addstat(struct statfs *totalfsp, struct statfs *statfsp)
{
 uint64_t bsize;

 bsize = statfsp->f_bsize / totalfsp->f_bsize;
 totalfsp->f_blocks += statfsp->f_blocks * bsize;
 totalfsp->f_bfree += statfsp->f_bfree * bsize;
 totalfsp->f_bavail += statfsp->f_bavail * bsize;
 totalfsp->f_files += statfsp->f_files;
 totalfsp->f_ffree += statfsp->f_ffree;
}
