
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pipe_inode_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int EINVAL ;
 int ipipe_prep (struct pipe_inode_info*,unsigned int) ;
 int link_pipe (struct pipe_inode_info*,struct pipe_inode_info*,size_t,unsigned int) ;
 int opipe_prep (struct pipe_inode_info*,unsigned int) ;
 struct pipe_inode_info* pipe_info (int ) ;

__attribute__((used)) static long do_tee(struct file *in, struct file *out, size_t len,
     unsigned int flags)
{
 struct pipe_inode_info *ipipe = pipe_info(in->f_path.dentry->d_inode);
 struct pipe_inode_info *opipe = pipe_info(out->f_path.dentry->d_inode);
 int ret = -EINVAL;





 if (ipipe && opipe && ipipe != opipe) {




  ret = ipipe_prep(ipipe, flags);
  if (!ret) {
   ret = opipe_prep(opipe, flags);
   if (!ret)
    ret = link_pipe(ipipe, opipe, len, flags);
  }
 }

 return ret;
}
