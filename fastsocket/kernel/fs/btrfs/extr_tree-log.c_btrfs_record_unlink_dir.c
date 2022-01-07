
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ last_unlink_trans; scalar_t__ logged_trans; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int smp_mb () ;

void btrfs_record_unlink_dir(struct btrfs_trans_handle *trans,
        struct inode *dir, struct inode *inode,
        int for_rename)
{
 if (S_ISREG(inode->i_mode))
  BTRFS_I(inode)->last_unlink_trans = trans->transid;





 smp_mb();
 if (BTRFS_I(dir)->logged_trans == trans->transid)
  return;





 if (BTRFS_I(inode)->logged_trans == trans->transid)
  return;
 if (for_rename)
  goto record;


 return;

record:
 BTRFS_I(dir)->last_unlink_trans = trans->transid;
}
