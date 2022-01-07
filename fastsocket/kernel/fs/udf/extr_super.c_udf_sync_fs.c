
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_sb_info {int s_alloc_mutex; scalar_t__ s_lvid_dirty; int s_lvid_bh; } ;
struct super_block {scalar_t__ s_dirt; } ;


 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int mark_buffer_dirty (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int udf_sync_fs(struct super_block *sb, int wait)
{
 struct udf_sb_info *sbi = UDF_SB(sb);

 mutex_lock(&sbi->s_alloc_mutex);
 if (sbi->s_lvid_dirty) {




  mark_buffer_dirty(sbi->s_lvid_bh);
  sb->s_dirt = 0;
  sbi->s_lvid_dirty = 0;
 }
 mutex_unlock(&sbi->s_alloc_mutex);

 return 0;
}
