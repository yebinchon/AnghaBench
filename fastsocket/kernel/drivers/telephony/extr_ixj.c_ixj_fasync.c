
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_7__ {int async_queue; } ;
struct TYPE_5__ {int d_inode; } ;
typedef TYPE_3__ IXJ ;


 int NUM (int ) ;
 int fasync_helper (int,struct file*,int,int *) ;
 TYPE_3__* get_ixj (int ) ;

__attribute__((used)) static int ixj_fasync(int fd, struct file *file_p, int mode)
{
 IXJ *j = get_ixj(NUM(file_p->f_path.dentry->d_inode));

 return fasync_helper(fd, file_p, mode, &j->async_queue);
}
