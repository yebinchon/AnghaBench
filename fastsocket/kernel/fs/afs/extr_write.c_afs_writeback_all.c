
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int range_cyclic; int nr_to_write; int sync_mode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;
struct afs_vnode {TYPE_1__ vfs_inode; } ;
struct address_space {int host; TYPE_2__* a_ops; } ;
struct TYPE_4__ {int (* writepages ) (struct address_space*,struct writeback_control*) ;} ;


 int I_DIRTY_PAGES ;
 int LONG_MAX ;
 int WB_SYNC_ALL ;
 int __mark_inode_dirty (int ,int ) ;
 int _enter (char*) ;
 int _leave (char*,int) ;
 int stub1 (struct address_space*,struct writeback_control*) ;

int afs_writeback_all(struct afs_vnode *vnode)
{
 struct address_space *mapping = vnode->vfs_inode.i_mapping;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = LONG_MAX,
  .range_cyclic = 1,
 };
 int ret;

 _enter("");

 ret = mapping->a_ops->writepages(mapping, &wbc);
 __mark_inode_dirty(mapping->host, I_DIRTY_PAGES);

 _leave(" = %d", ret);
 return ret;
}
