
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
typedef int blkcnt_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_feature_ro_compat; int s_feature_incompat; } ;


 int EXT4_FEATURE_INCOMPAT_SUPP ;
 int EXT4_FEATURE_RO_COMPAT_HUGE_FILE ;
 int EXT4_FEATURE_RO_COMPAT_SUPP ;
 scalar_t__ EXT4_HAS_INCOMPAT_FEATURE (struct super_block*,int) ;
 scalar_t__ EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int) ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int KERN_ERR ;
 int ext4_msg (struct super_block*,int ,char*,...) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_feature_set_ok(struct super_block *sb, int readonly)
{
 if (EXT4_HAS_INCOMPAT_FEATURE(sb, ~EXT4_FEATURE_INCOMPAT_SUPP)) {
  ext4_msg(sb, KERN_ERR,
   "Couldn't mount because of "
   "unsupported optional features (%x)",
   (le32_to_cpu(EXT4_SB(sb)->s_es->s_feature_incompat) &
   ~EXT4_FEATURE_INCOMPAT_SUPP));
  return 0;
 }

 if (readonly)
  return 1;


 if (EXT4_HAS_RO_COMPAT_FEATURE(sb, ~EXT4_FEATURE_RO_COMPAT_SUPP)) {
  ext4_msg(sb, KERN_ERR, "couldn't mount RDWR because of "
    "unsupported optional features (%x)",
    (le32_to_cpu(EXT4_SB(sb)->s_es->s_feature_ro_compat) &
    ~EXT4_FEATURE_RO_COMPAT_SUPP));
  return 0;
 }




 if (EXT4_HAS_RO_COMPAT_FEATURE(sb, EXT4_FEATURE_RO_COMPAT_HUGE_FILE)) {
  if (sizeof(blkcnt_t) < sizeof(u64)) {
   ext4_msg(sb, KERN_ERR, "Filesystem with huge files "
     "cannot be mounted RDWR without "
     "CONFIG_LBDAF");
   return 0;
  }
 }
 return 1;
}
