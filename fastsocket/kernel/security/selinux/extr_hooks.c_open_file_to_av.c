
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int file_to_av (struct file*) ;
 int open_inode_to_av (int ) ;

__attribute__((used)) static inline u32 open_file_to_av(struct file *file)
{
 u32 av = file_to_av(file);

 av |= open_inode_to_av(file->f_path.dentry->d_inode);

 return av;
}
