
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; int usage; } ;
struct TYPE_5__ {int flags; int usage; } ;
struct TYPE_4__ {int flags; int usage; } ;
struct btrfs_balance_control {TYPE_3__ meta; TYPE_2__ sys; TYPE_1__ data; } ;


 int BTRFS_BALANCE_ARGS_CONVERT ;
 int BTRFS_BALANCE_ARGS_SOFT ;
 int BTRFS_BALANCE_ARGS_USAGE ;

__attribute__((used)) static void update_balance_args(struct btrfs_balance_control *bctl)
{



 if (bctl->data.flags & BTRFS_BALANCE_ARGS_CONVERT)
  bctl->data.flags |= BTRFS_BALANCE_ARGS_SOFT;
 if (bctl->sys.flags & BTRFS_BALANCE_ARGS_CONVERT)
  bctl->sys.flags |= BTRFS_BALANCE_ARGS_SOFT;
 if (bctl->meta.flags & BTRFS_BALANCE_ARGS_CONVERT)
  bctl->meta.flags |= BTRFS_BALANCE_ARGS_SOFT;
 if (!(bctl->data.flags & BTRFS_BALANCE_ARGS_USAGE) &&
     !(bctl->data.flags & BTRFS_BALANCE_ARGS_CONVERT)) {
  bctl->data.flags |= BTRFS_BALANCE_ARGS_USAGE;
  bctl->data.usage = 90;
 }
 if (!(bctl->sys.flags & BTRFS_BALANCE_ARGS_USAGE) &&
     !(bctl->sys.flags & BTRFS_BALANCE_ARGS_CONVERT)) {
  bctl->sys.flags |= BTRFS_BALANCE_ARGS_USAGE;
  bctl->sys.usage = 90;
 }
 if (!(bctl->meta.flags & BTRFS_BALANCE_ARGS_USAGE) &&
     !(bctl->meta.flags & BTRFS_BALANCE_ARGS_CONVERT)) {
  bctl->meta.flags |= BTRFS_BALANCE_ARGS_USAGE;
  bctl->meta.usage = 90;
 }
}
