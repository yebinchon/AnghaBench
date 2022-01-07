
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sustat {unsigned long ss_ncleansegs; } ;
struct inode {int dummy; } ;


 int nilfs_sufile_get_stat (struct inode*,struct nilfs_sustat*) ;

int nilfs_sufile_get_ncleansegs(struct inode *sufile, unsigned long *nsegsp)
{
 struct nilfs_sustat sustat;
 int ret;

 ret = nilfs_sufile_get_stat(sufile, &sustat);
 if (ret == 0)
  *nsegsp = sustat.ss_ncleansegs;
 return ret;
}
