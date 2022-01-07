
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ mq_curmsgs; scalar_t__ mq_maxmsg; } ;
struct mqueue_inode_info {int lock; TYPE_1__ attr; int wait_q; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {int d_inode; } ;


 struct mqueue_inode_info* MQUEUE_I (int ) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int mqueue_poll_file(struct file *filp, struct poll_table_struct *poll_tab)
{
 struct mqueue_inode_info *info = MQUEUE_I(filp->f_path.dentry->d_inode);
 int retval = 0;

 poll_wait(filp, &info->wait_q, poll_tab);

 spin_lock(&info->lock);
 if (info->attr.mq_curmsgs)
  retval = POLLIN | POLLRDNORM;

 if (info->attr.mq_curmsgs < info->attr.mq_maxmsg)
  retval |= POLLOUT | POLLWRNORM;
 spin_unlock(&info->lock);

 return retval;
}
