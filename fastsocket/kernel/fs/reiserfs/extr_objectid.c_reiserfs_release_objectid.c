
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_trans_id; struct super_block* t_super; } ;
struct reiserfs_super_block {int dummy; } ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __le32 ;


 int BUG_ON (int) ;
 int PROC_INFO_INC (struct super_block*,int ) ;
 int RFALSE (int,char*,int,int) ;
 int SB_BUFFER_WITH_SB (struct super_block*) ;
 struct reiserfs_super_block* SB_DISK_SUPER_BLOCK (struct super_block*) ;
 int check_objectid_map (struct super_block*,scalar_t__*) ;
 scalar_t__ cpu_to_le32 (scalar_t__) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct super_block*,int ) ;
 int le32_add_cpu (scalar_t__*,int) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int leaked_oid ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* objectid_map (struct super_block*,struct reiserfs_super_block*) ;
 int reiserfs_error (struct super_block*,char*,char*,unsigned long) ;
 int reiserfs_prepare_for_journal (struct super_block*,int ,int) ;
 int sb_oid_cursize (struct reiserfs_super_block*) ;
 int sb_oid_maxsize (struct reiserfs_super_block*) ;
 int set_sb_oid_cursize (struct reiserfs_super_block*,int) ;

void reiserfs_release_objectid(struct reiserfs_transaction_handle *th,
          __u32 objectid_to_release)
{
 struct super_block *s = th->t_super;
 struct reiserfs_super_block *rs = SB_DISK_SUPER_BLOCK(s);
 __le32 *map = objectid_map(s, rs);
 int i = 0;

 BUG_ON(!th->t_trans_id);

 check_objectid_map(s, map);

 reiserfs_prepare_for_journal(s, SB_BUFFER_WITH_SB(s), 1);
 journal_mark_dirty(th, s, SB_BUFFER_WITH_SB(s));






 while (i < sb_oid_cursize(rs)) {
  if (objectid_to_release == le32_to_cpu(map[i])) {


   le32_add_cpu(&map[i], 1);


   if (map[i] == map[i + 1]) {

    memmove(map + i, map + i + 2,
     (sb_oid_cursize(rs) - i -
      2) * sizeof(__u32));

    set_sb_oid_cursize(rs, sb_oid_cursize(rs) - 2);

    RFALSE(sb_oid_cursize(rs) < 2 ||
           sb_oid_cursize(rs) > sb_oid_maxsize(rs),
           "vs-15005: objectid map corrupted cur_size == %d (max == %d)",
           sb_oid_cursize(rs), sb_oid_maxsize(rs));
   }
   return;
  }

  if (objectid_to_release > le32_to_cpu(map[i]) &&
      objectid_to_release < le32_to_cpu(map[i + 1])) {

   if (objectid_to_release + 1 == le32_to_cpu(map[i + 1])) {

    le32_add_cpu(&map[i + 1], -1);
    return;
   }


   if (sb_oid_cursize(rs) == sb_oid_maxsize(rs)) {

    PROC_INFO_INC(s, leaked_oid);
    return;
   }


   memmove(map + i + 3, map + i + 1,
    (sb_oid_cursize(rs) - i - 1) * sizeof(__u32));
   map[i + 1] = cpu_to_le32(objectid_to_release);
   map[i + 2] = cpu_to_le32(objectid_to_release + 1);
   set_sb_oid_cursize(rs, sb_oid_cursize(rs) + 2);
   return;
  }
  i += 2;
 }

 reiserfs_error(s, "vs-15011", "tried to free free object id (%lu)",
         (long unsigned)objectid_to_release);
}
