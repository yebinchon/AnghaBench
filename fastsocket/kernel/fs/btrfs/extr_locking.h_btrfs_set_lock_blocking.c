
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;


 int BTRFS_WRITE_LOCK ;
 int btrfs_set_lock_blocking_rw (struct extent_buffer*,int ) ;

__attribute__((used)) static inline void btrfs_set_lock_blocking(struct extent_buffer *eb)
{
 btrfs_set_lock_blocking_rw(eb, BTRFS_WRITE_LOCK);
}
