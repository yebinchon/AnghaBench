
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int ui_mutex; } ;


 int WB_MUTEX_1 ;
 int WB_MUTEX_2 ;
 int mutex_lock_nested (int *,int ) ;
 TYPE_1__* ubifs_inode (struct inode*) ;

__attribute__((used)) static void lock_2_inodes(struct inode *inode1, struct inode *inode2)
{
 mutex_lock_nested(&ubifs_inode(inode1)->ui_mutex, WB_MUTEX_1);
 mutex_lock_nested(&ubifs_inode(inode2)->ui_mutex, WB_MUTEX_2);
}
