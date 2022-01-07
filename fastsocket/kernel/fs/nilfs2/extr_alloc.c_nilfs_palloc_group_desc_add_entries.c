
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nilfs_palloc_group_desc {int pg_nfrees; } ;
struct inode {int dummy; } ;


 int le32_add_cpu (int *,int ) ;
 int nilfs_mdt_bgl_lock (struct inode*,unsigned long) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static void
nilfs_palloc_group_desc_add_entries(struct inode *inode,
        unsigned long group,
        struct nilfs_palloc_group_desc *desc,
        u32 n)
{
 spin_lock(nilfs_mdt_bgl_lock(inode, group));
 le32_add_cpu(&desc->pg_nfrees, n);
 spin_unlock(nilfs_mdt_bgl_lock(inode, group));
}
