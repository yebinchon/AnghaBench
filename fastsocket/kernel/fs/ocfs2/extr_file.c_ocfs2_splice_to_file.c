
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_desc {int total_len; int pos; } ;
struct pipe_inode_info {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;


 int mlog_errno (int) ;
 int ocfs2_prepare_inode_for_write (int ,int *,int ,int ,int *) ;
 int pipe_to_file ;
 int splice_from_pipe_feed (struct pipe_inode_info*,struct splice_desc*,int ) ;

__attribute__((used)) static int ocfs2_splice_to_file(struct pipe_inode_info *pipe,
    struct file *out,
    struct splice_desc *sd)
{
 int ret;

 ret = ocfs2_prepare_inode_for_write(out->f_path.dentry, &sd->pos,
         sd->total_len, 0, ((void*)0));
 if (ret < 0) {
  mlog_errno(ret);
  return ret;
 }

 return splice_from_pipe_feed(pipe, sd, pipe_to_file);
}
