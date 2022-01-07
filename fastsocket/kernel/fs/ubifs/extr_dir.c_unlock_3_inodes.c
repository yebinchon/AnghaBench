
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int ui_mutex; } ;


 int mutex_unlock (int *) ;
 TYPE_1__* ubifs_inode (struct inode*) ;

__attribute__((used)) static void unlock_3_inodes(struct inode *inode1, struct inode *inode2,
       struct inode *inode3)
{
 if (inode3)
  mutex_unlock(&ubifs_inode(inode3)->ui_mutex);
 if (inode1 != inode2)
  mutex_unlock(&ubifs_inode(inode2)->ui_mutex);
 mutex_unlock(&ubifs_inode(inode1)->ui_mutex);
}
