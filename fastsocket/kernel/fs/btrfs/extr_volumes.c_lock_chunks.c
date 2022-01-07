
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int chunk_mutex; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void lock_chunks(struct btrfs_root *root)
{
 mutex_lock(&root->fs_info->chunk_mutex);
}
