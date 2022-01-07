
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_group_desc {int pg_nfrees; } ;
struct inode {int dummy; } ;


 unsigned long le32_to_cpu (int ) ;
 int nilfs_mdt_bgl_lock (struct inode*,unsigned long) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static unsigned long
nilfs_palloc_group_desc_nfrees(struct inode *inode, unsigned long group,
          const struct nilfs_palloc_group_desc *desc)
{
 unsigned long nfree;

 spin_lock(nilfs_mdt_bgl_lock(inode, group));
 nfree = le32_to_cpu(desc->pg_nfrees);
 spin_unlock(nilfs_mdt_bgl_lock(inode, group));
 return nfree;
}
