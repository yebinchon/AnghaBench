
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {struct inode* ns_dat; struct inode* ns_gc_dat; } ;
struct inode {int dummy; } ;


 scalar_t__ nilfs_doing_gc () ;

__attribute__((used)) static inline struct inode *nilfs_dat_inode(const struct the_nilfs *nilfs)
{
 return nilfs_doing_gc() ? nilfs->ns_gc_dat : nilfs->ns_dat;
}
