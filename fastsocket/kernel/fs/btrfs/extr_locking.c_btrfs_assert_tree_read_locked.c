
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int read_locks; } ;


 int BUG_ON (int) ;
 int atomic_read (int *) ;

void btrfs_assert_tree_read_locked(struct extent_buffer *eb)
{
 BUG_ON(!atomic_read(&eb->read_locks));
}
