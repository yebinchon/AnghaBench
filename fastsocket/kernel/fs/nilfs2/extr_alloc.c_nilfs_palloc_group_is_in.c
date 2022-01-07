
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_palloc_entries_per_group (struct inode*) ;

__attribute__((used)) static int
nilfs_palloc_group_is_in(struct inode *inode, unsigned long group, __u64 nr)
{
 __u64 first, last;

 first = group * nilfs_palloc_entries_per_group(inode);
 last = first + nilfs_palloc_entries_per_group(inode) - 1;
 return (nr >= first) && (nr <= last);
}
