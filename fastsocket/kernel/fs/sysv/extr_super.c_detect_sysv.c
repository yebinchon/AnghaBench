
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysv_sb_info {int s_forced_ro; int s_type; int s_bytesex; struct super_block* s_sb; } ;
struct sysv4_super_block {int s_time; int s_nfree; int s_type; int s_magic; } ;
struct super_block {int s_flags; int s_id; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __le32 ;
typedef scalar_t__ __be32 ;


 int BLOCK_SIZE ;
 int BYTESEX_BE ;
 int BYTESEX_LE ;
 int FSTYPE_AFS ;
 int FSTYPE_SYSV2 ;
 int FSTYPE_SYSV4 ;
 scalar_t__ JAN_1_1980 ;
 int MS_RDONLY ;
 scalar_t__ cpu_to_be32 (int) ;
 scalar_t__ cpu_to_le32 (int) ;
 int fs16_to_cpu (struct sysv_sb_info*,int ) ;
 scalar_t__ fs32_to_cpu (struct sysv_sb_info*,int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static int detect_sysv(struct sysv_sb_info *sbi, struct buffer_head *bh)
{
 struct super_block *sb = sbi->s_sb;

 struct sysv4_super_block * sbd;
 u32 type;

 sbd = (struct sysv4_super_block *) (bh->b_data + BLOCK_SIZE/2);
 if (*(__le32 *)&sbd->s_magic == cpu_to_le32(0xfd187e20))
  sbi->s_bytesex = BYTESEX_LE;
 else if (*(__be32 *)&sbd->s_magic == cpu_to_be32(0xfd187e20))
  sbi->s_bytesex = BYTESEX_BE;
 else
  return 0;

 type = fs32_to_cpu(sbi, sbd->s_type);

  if (fs16_to_cpu(sbi, sbd->s_nfree) == 0xffff) {
   sbi->s_type = FSTYPE_AFS;
  sbi->s_forced_ro = 1;
   if (!(sb->s_flags & MS_RDONLY)) {
    printk("SysV FS: SCO EAFS on %s detected, "
     "forcing read-only mode.\n",
     sb->s_id);
   }
   return type;
  }

 if (fs32_to_cpu(sbi, sbd->s_time) < JAN_1_1980) {

  if (type > 3 || type < 1)
   return 0;
  sbi->s_type = FSTYPE_SYSV2;
  return type;
 }
 if ((type > 3 || type < 1) && (type > 0x30 || type < 0x10))
  return 0;






 if (type >= 0x10) {
  printk("SysV FS: can't handle long file names on %s, "
         "forcing read-only mode.\n", sb->s_id);
  sbi->s_forced_ro = 1;
 }

 sbi->s_type = FSTYPE_SYSV4;
 return type >= 0x10 ? type >> 4 : type;
}
