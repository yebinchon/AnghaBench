
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int cconn; } ;
struct inode {int i_sb; } ;
struct file_lock {int fl_flags; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int ip_blkno; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ENOLCK ;
 int FL_POSIX ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ __mandatory_lock (struct inode*) ;
 int ocfs2_plock (int ,int ,struct file*,int,struct file_lock*) ;

int ocfs2_lock(struct file *file, int cmd, struct file_lock *fl)
{
 struct inode *inode = file->f_mapping->host;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (!(fl->fl_flags & FL_POSIX))
  return -ENOLCK;
 if (__mandatory_lock(inode))
  return -ENOLCK;

 return ocfs2_plock(osb->cconn, OCFS2_I(inode)->ip_blkno, file, cmd, fl);
}
