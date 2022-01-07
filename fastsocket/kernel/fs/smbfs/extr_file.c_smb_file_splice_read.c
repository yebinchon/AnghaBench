
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 int DENTRY_PATH (struct dentry*) ;
 int PARANOIA (char*,int ,scalar_t__) ;
 int VERBOSE (char*,int ,int ,size_t) ;
 scalar_t__ generic_file_splice_read (struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 scalar_t__ smb_revalidate_inode (struct dentry*) ;

__attribute__((used)) static ssize_t
smb_file_splice_read(struct file *file, loff_t *ppos,
       struct pipe_inode_info *pipe, size_t count,
       unsigned int flags)
{
 struct dentry *dentry = file->f_path.dentry;
 ssize_t status;

 VERBOSE("file %s/%s, pos=%Ld, count=%lu\n",
  DENTRY_PATH(dentry), *ppos, count);

 status = smb_revalidate_inode(dentry);
 if (status) {
  PARANOIA("%s/%s validation failed, error=%Zd\n",
    DENTRY_PATH(dentry), status);
  goto out;
 }
 status = generic_file_splice_read(file, ppos, pipe, count, flags);
out:
 return status;
}
