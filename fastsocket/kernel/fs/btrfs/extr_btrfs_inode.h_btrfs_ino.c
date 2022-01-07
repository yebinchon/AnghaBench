
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ objectid; } ;
struct TYPE_4__ {TYPE_1__ location; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 scalar_t__ BTRFS_ROOT_ITEM_KEY ;

__attribute__((used)) static inline u64 btrfs_ino(struct inode *inode)
{
 u64 ino = BTRFS_I(inode)->location.objectid;





 if (!ino || BTRFS_I(inode)->location.type == BTRFS_ROOT_ITEM_KEY)
  ino = inode->i_ino;
 return ino;
}
