
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {scalar_t__ s_bh1; scalar_t__ s_bh2; } ;
struct super_block {int s_flags; scalar_t__ s_dirt; } ;


 int MS_RDONLY ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int brelse (scalar_t__) ;
 int kfree (struct sysv_sb_info*) ;
 int mark_buffer_dirty (scalar_t__) ;
 int sysv_write_super (struct super_block*) ;

__attribute__((used)) static void sysv_put_super(struct super_block *sb)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);

 if (sb->s_dirt)
  sysv_write_super(sb);

 if (!(sb->s_flags & MS_RDONLY)) {

  mark_buffer_dirty(sbi->s_bh1);
  if (sbi->s_bh1 != sbi->s_bh2)
   mark_buffer_dirty(sbi->s_bh2);
 }

 brelse(sbi->s_bh1);
 if (sbi->s_bh1 != sbi->s_bh2)
  brelse(sbi->s_bh2);

 kfree(sbi);
}
