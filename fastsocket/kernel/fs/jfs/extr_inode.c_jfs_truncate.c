
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct inode {scalar_t__ i_size; int i_mapping; } ;


 int IWRITE_LOCK (struct inode*,int ) ;
 int IWRITE_UNLOCK (struct inode*) ;
 int RDWRLOCK_NORMAL ;
 int jfs_get_block ;
 int jfs_info (char*,int ) ;
 int jfs_truncate_nolock (struct inode*,scalar_t__) ;
 int nobh_truncate_page (int ,scalar_t__,int ) ;

void jfs_truncate(struct inode *ip)
{
 jfs_info("jfs_truncate: size = 0x%lx", (ulong) ip->i_size);

 nobh_truncate_page(ip->i_mapping, ip->i_size, jfs_get_block);

 IWRITE_LOCK(ip, RDWRLOCK_NORMAL);
 jfs_truncate_nolock(ip, ip->i_size);
 IWRITE_UNLOCK(ip);
}
