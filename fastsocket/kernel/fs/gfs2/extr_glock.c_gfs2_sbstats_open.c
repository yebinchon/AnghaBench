
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct gfs2_glock_iter* private; } ;
struct inode {int i_private; } ;
struct gfs2_glock_iter {int sdp; } ;
struct file {struct seq_file* private_data; } ;


 int gfs2_sbstats_seq_ops ;
 int seq_open_private (struct file*,int *,int) ;

__attribute__((used)) static int gfs2_sbstats_open(struct inode *inode, struct file *file)
{
 int ret = seq_open_private(file, &gfs2_sbstats_seq_ops,
       sizeof(struct gfs2_glock_iter));
 if (ret == 0) {
  struct seq_file *seq = file->private_data;
  struct gfs2_glock_iter *gi = seq->private;
  gi->sdp = inode->i_private;
 }
 return ret;
}
