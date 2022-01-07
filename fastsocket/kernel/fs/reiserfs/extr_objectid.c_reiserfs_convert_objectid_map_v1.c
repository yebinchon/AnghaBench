
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct reiserfs_super_block_v1 {int dummy; } ;
struct reiserfs_super_block {int s_unused; int s_uuid; int s_label; } ;
typedef int __u32 ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 TYPE_1__* SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_super_block* SB_DISK_SUPER_BLOCK (struct super_block*) ;
 int SB_SIZE ;
 int generate_random_uuid (int ) ;
 int memset (int ,int ,int) ;
 int sb_oid_cursize (struct reiserfs_super_block*) ;
 int sb_oid_maxsize (struct reiserfs_super_block*) ;
 int set_sb_oid_cursize (struct reiserfs_super_block*,int) ;
 int set_sb_oid_maxsize (struct reiserfs_super_block*,int) ;

int reiserfs_convert_objectid_map_v1(struct super_block *s)
{
 struct reiserfs_super_block *disk_sb = SB_DISK_SUPER_BLOCK(s);
 int cur_size = sb_oid_cursize(disk_sb);
 int new_size = (s->s_blocksize - SB_SIZE) / sizeof(__u32) / 2 * 2;
 int old_max = sb_oid_maxsize(disk_sb);
 struct reiserfs_super_block_v1 *disk_sb_v1;
 __le32 *objectid_map, *new_objectid_map;
 int i;

 disk_sb_v1 =
     (struct reiserfs_super_block_v1 *)(SB_BUFFER_WITH_SB(s)->b_data);
 objectid_map = (__le32 *) (disk_sb_v1 + 1);
 new_objectid_map = (__le32 *) (disk_sb + 1);

 if (cur_size > new_size) {



  objectid_map[new_size - 1] = objectid_map[cur_size - 1];
  set_sb_oid_cursize(disk_sb, new_size);
 }

 for (i = new_size - 1; i >= 0; i--) {
  objectid_map[i + (old_max - new_size)] = objectid_map[i];
 }


 set_sb_oid_maxsize(disk_sb, new_size);


 memset(disk_sb->s_label, 0, sizeof(disk_sb->s_label));
 generate_random_uuid(disk_sb->s_uuid);


 memset(disk_sb->s_unused, 0, sizeof(disk_sb->s_unused));
 return 0;
}
