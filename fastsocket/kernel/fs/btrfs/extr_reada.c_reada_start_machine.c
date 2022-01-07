
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;
struct reada_machine_work {TYPE_1__ work; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int readahead_workers; } ;


 int BUG () ;
 int GFP_NOFS ;
 int btrfs_queue_worker (int *,TYPE_1__*) ;
 struct reada_machine_work* kzalloc (int,int ) ;
 int reada_start_machine_worker ;

__attribute__((used)) static void reada_start_machine(struct btrfs_fs_info *fs_info)
{
 struct reada_machine_work *rmw;

 rmw = kzalloc(sizeof(*rmw), GFP_NOFS);
 if (!rmw) {

  BUG();
 }
 rmw->work.func = reada_start_machine_worker;
 rmw->fs_info = fs_info;

 btrfs_queue_worker(&fs_info->readahead_workers, &rmw->work);
}
