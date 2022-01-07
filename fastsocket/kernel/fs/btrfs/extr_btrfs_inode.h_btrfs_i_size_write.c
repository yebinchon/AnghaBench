
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int disk_i_size; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int i_size_write (struct inode*,int ) ;

__attribute__((used)) static inline void btrfs_i_size_write(struct inode *inode, u64 size)
{
 i_size_write(inode, size);
 BTRFS_I(inode)->disk_i_size = size;
}
