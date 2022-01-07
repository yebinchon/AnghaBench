
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {TYPE_1__* vfs_sb; } ;
struct TYPE_2__ {int s_umount; } ;


 int down_read (int *) ;
 int up_read (int *) ;
 int writeback_inodes_sb (TYPE_1__*) ;

__attribute__((used)) static void shrink_liability(struct ubifs_info *c, int nr_to_write)
{
 down_read(&c->vfs_sb->s_umount);
 writeback_inodes_sb(c->vfs_sb);
 up_read(&c->vfs_sb->s_umount);
}
