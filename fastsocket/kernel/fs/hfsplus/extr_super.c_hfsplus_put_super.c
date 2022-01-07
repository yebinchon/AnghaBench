
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int * s_fs_info; scalar_t__ s_dirt; } ;
struct hfsplus_vh {int attributes; int modify_date; } ;
struct TYPE_2__ {int nls; int s_vhbh; int hidden_dir; int alloc_file; int ext_tree; int cat_tree; struct hfsplus_vh* s_vhdr; } ;


 int DBG_SUPER ;
 TYPE_1__ HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_VOL_INCNSTNT ;
 int HFSPLUS_VOL_UNMNT ;
 int MS_RDONLY ;
 int brelse (int ) ;
 int cpu_to_be32 (int ) ;
 int dprint (int ,char*) ;
 int hfs_btree_close (int ) ;
 int hfsp_now2mt () ;
 int hfsplus_write_super (struct super_block*) ;
 int iput (int ) ;
 int kfree (int *) ;
 int lock_kernel () ;
 int mark_buffer_dirty (int ) ;
 int sync_dirty_buffer (int ) ;
 int unload_nls (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void hfsplus_put_super(struct super_block *sb)
{
 dprint(DBG_SUPER, "hfsplus_put_super\n");
 if (!sb->s_fs_info)
  return;

 lock_kernel();

 if (sb->s_dirt)
  hfsplus_write_super(sb);
 if (!(sb->s_flags & MS_RDONLY) && HFSPLUS_SB(sb).s_vhdr) {
  struct hfsplus_vh *vhdr = HFSPLUS_SB(sb).s_vhdr;

  vhdr->modify_date = hfsp_now2mt();
  vhdr->attributes |= cpu_to_be32(HFSPLUS_VOL_UNMNT);
  vhdr->attributes &= cpu_to_be32(~HFSPLUS_VOL_INCNSTNT);
  mark_buffer_dirty(HFSPLUS_SB(sb).s_vhbh);
  sync_dirty_buffer(HFSPLUS_SB(sb).s_vhbh);
 }

 hfs_btree_close(HFSPLUS_SB(sb).cat_tree);
 hfs_btree_close(HFSPLUS_SB(sb).ext_tree);
 iput(HFSPLUS_SB(sb).alloc_file);
 iput(HFSPLUS_SB(sb).hidden_dir);
 brelse(HFSPLUS_SB(sb).s_vhbh);
 unload_nls(HFSPLUS_SB(sb).nls);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);

 unlock_kernel();
}
