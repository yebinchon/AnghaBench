
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int s_partitions; int * s_partmaps; int s_lvid_bh; int s_nls_map; scalar_t__ s_vat_inode; } ;
struct super_block {int s_flags; int * s_fs_info; } ;


 int MS_RDONLY ;
 int UDF_FLAG_NLS_MAP ;
 scalar_t__ UDF_QUERY_FLAG (struct super_block*,int ) ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int brelse (int ) ;
 int iput (scalar_t__) ;
 int kfree (int *) ;
 int lock_kernel () ;
 int udf_close_lvid (struct super_block*) ;
 int udf_free_partition (int *) ;
 int unload_nls (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void udf_put_super(struct super_block *sb)
{
 int i;
 struct udf_sb_info *sbi;

 sbi = UDF_SB(sb);

 lock_kernel();

 if (sbi->s_vat_inode)
  iput(sbi->s_vat_inode);
 if (sbi->s_partitions)
  for (i = 0; i < sbi->s_partitions; i++)
   udf_free_partition(&sbi->s_partmaps[i]);




 if (!(sb->s_flags & MS_RDONLY))
  udf_close_lvid(sb);
 brelse(sbi->s_lvid_bh);
 kfree(sbi->s_partmaps);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);

 unlock_kernel();
}
