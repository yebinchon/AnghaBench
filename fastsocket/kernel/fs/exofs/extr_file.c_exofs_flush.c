
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef int fl_owner_t ;


 int exofs_file_fsync (struct file*,int ,int) ;

__attribute__((used)) static int exofs_flush(struct file *file, fl_owner_t id)
{
 exofs_file_fsync(file, file->f_path.dentry, 1);

 return 0;
}
