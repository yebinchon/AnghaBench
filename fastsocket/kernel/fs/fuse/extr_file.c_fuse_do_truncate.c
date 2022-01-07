
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct iattr {int ia_valid; struct file* ia_file; int ia_size; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ATTR_FILE ;
 int ATTR_SIZE ;
 int fuse_do_setattr (struct inode*,struct iattr*,struct file*) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static void fuse_do_truncate(struct file *file)
{
 struct inode *inode = file->f_mapping->host;
 struct iattr attr;

 attr.ia_valid = ATTR_SIZE;
 attr.ia_size = i_size_read(inode);

 attr.ia_file = file;
 attr.ia_valid |= ATTR_FILE;

 fuse_do_setattr(inode, &attr, file);
}
