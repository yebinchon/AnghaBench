
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {scalar_t__ i_private; } ;


 int tomoyo_open_control (int const,struct file*) ;

__attribute__((used)) static int tomoyo_open(struct inode *inode, struct file *file)
{
 const int key = ((u8 *) file->f_path.dentry->d_inode->i_private)
  - ((u8 *) ((void*)0));
 return tomoyo_open_control(key, file);
}
