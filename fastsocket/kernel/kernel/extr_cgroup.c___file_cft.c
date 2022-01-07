
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_2__* f_dentry; } ;
struct cftype {int dummy; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int * i_fop; } ;


 int EINVAL ;
 struct cftype* ERR_PTR (int ) ;
 struct cftype* __d_cft (TYPE_2__*) ;
 int cgroup_file_operations ;

__attribute__((used)) static inline struct cftype *__file_cft(struct file *file)
{
 if (file->f_dentry->d_inode->i_fop != &cgroup_file_operations)
  return ERR_PTR(-EINVAL);
 return __d_cft(file->f_dentry);
}
