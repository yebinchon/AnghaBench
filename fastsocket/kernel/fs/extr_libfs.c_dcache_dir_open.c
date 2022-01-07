
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int len; char* name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {int private_data; TYPE_1__ f_path; } ;


 int ENOMEM ;
 int d_alloc (int ,struct qstr*) ;

int dcache_dir_open(struct inode *inode, struct file *file)
{
 static struct qstr cursor_name = {.len = 1, .name = "."};

 file->private_data = d_alloc(file->f_path.dentry, &cursor_name);

 return file->private_data ? 0 : -ENOMEM;
}
