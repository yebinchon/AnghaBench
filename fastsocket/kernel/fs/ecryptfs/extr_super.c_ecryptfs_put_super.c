
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ecryptfs_sb_info {int mount_crypt_stat; } ;


 int ecryptfs_destroy_mount_crypt_stat (int *) ;
 int ecryptfs_sb_info_cache ;
 int ecryptfs_set_superblock_private (struct super_block*,int *) ;
 struct ecryptfs_sb_info* ecryptfs_superblock_to_private (struct super_block*) ;
 int kmem_cache_free (int ,struct ecryptfs_sb_info*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static void ecryptfs_put_super(struct super_block *sb)
{
 struct ecryptfs_sb_info *sb_info = ecryptfs_superblock_to_private(sb);

 lock_kernel();

 ecryptfs_destroy_mount_crypt_stat(&sb_info->mount_crypt_stat);
 kmem_cache_free(ecryptfs_sb_info_cache, sb_info);
 ecryptfs_set_superblock_private(sb, ((void*)0));

 unlock_kernel();
}
