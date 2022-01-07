
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_size; int i_blocks; int i_sb; } ;
struct hpfs_dirent {int length; int namelen; int name; scalar_t__ down; } ;
struct dnode {scalar_t__ up; int first_free; scalar_t__ root_dnode; } ;
typedef scalar_t__ secno ;
typedef int loff_t ;
typedef scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;


 int GFP_NOFS ;
 scalar_t__ de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_last_de (struct dnode*) ;
 struct hpfs_dirent* dnode_pre_last_de (struct dnode*) ;
 int for_all_poss (struct inode*,int ,int,int) ;
 int get_pos (struct dnode*,struct hpfs_dirent*) ;
 int hpfs_add_to_dnode (struct inode*,scalar_t__,int ,int ,struct hpfs_dirent*,scalar_t__) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_delete_de (int ,struct dnode*,struct hpfs_dirent*) ;
 int hpfs_error (int ,char*,...) ;
 int hpfs_free_dnode (int ,scalar_t__) ;
 struct dnode* hpfs_map_dnode (int ,scalar_t__,struct quad_buffer_head*) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int hpfs_pos_subst ;
 TYPE_1__* hpfs_sb (int ) ;
 scalar_t__ hpfs_stop_cycles (int ,scalar_t__,int*,int*,char*) ;
 int kfree (struct hpfs_dirent*) ;
 struct hpfs_dirent* kmalloc (int,int ) ;
 int memcpy (struct hpfs_dirent*,struct hpfs_dirent*,int) ;
 int set_last_pointer (int ,struct dnode*,scalar_t__) ;

__attribute__((used)) static secno move_to_top(struct inode *i, dnode_secno from, dnode_secno to)
{
 dnode_secno dno, ddno;
 dnode_secno chk_up = to;
 struct dnode *dnode;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de, *nde;
 int a;
 loff_t t;
 int c1, c2 = 0;
 dno = from;
 while (1) {
  if (hpfs_sb(i->i_sb)->sb_chk)
   if (hpfs_stop_cycles(i->i_sb, dno, &c1, &c2, "move_to_top"))
    return 0;
  if (!(dnode = hpfs_map_dnode(i->i_sb, dno, &qbh))) return 0;
  if (hpfs_sb(i->i_sb)->sb_chk) {
   if (dnode->up != chk_up) {
    hpfs_error(i->i_sb, "move_to_top: up pointer from %08x should be %08x, is %08x",
     dno, chk_up, dnode->up);
    hpfs_brelse4(&qbh);
    return 0;
   }
   chk_up = dno;
  }
  if (!(de = dnode_last_de(dnode))) {
   hpfs_error(i->i_sb, "move_to_top: dnode %08x has no last de", dno);
   hpfs_brelse4(&qbh);
   return 0;
  }
  if (!de->down) break;
  dno = de_down_pointer(de);
  hpfs_brelse4(&qbh);
 }
 while (!(de = dnode_pre_last_de(dnode))) {
  dnode_secno up = dnode->up;
  hpfs_brelse4(&qbh);
  hpfs_free_dnode(i->i_sb, dno);
  i->i_size -= 2048;
  i->i_blocks -= 4;
  for_all_poss(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, 5);
  if (up == to) return to;
  if (!(dnode = hpfs_map_dnode(i->i_sb, up, &qbh))) return 0;
  if (dnode->root_dnode) {
   hpfs_error(i->i_sb, "move_to_top: got to root_dnode while moving from %08x to %08x", from, to);
   hpfs_brelse4(&qbh);
   return 0;
  }
  de = dnode_last_de(dnode);
  if (!de || !de->down) {
   hpfs_error(i->i_sb, "move_to_top: dnode %08x doesn't point down to %08x", up, dno);
   hpfs_brelse4(&qbh);
   return 0;
  }
  dnode->first_free -= 4;
  de->length -= 4;
  de->down = 0;
  hpfs_mark_4buffers_dirty(&qbh);
  dno = up;
 }
 t = get_pos(dnode, de);
 for_all_poss(i, hpfs_pos_subst, t, 4);
 for_all_poss(i, hpfs_pos_subst, t + 1, 5);
 if (!(nde = kmalloc(de->length, GFP_NOFS))) {
  hpfs_error(i->i_sb, "out of memory for dirent - directory will be corrupted");
  hpfs_brelse4(&qbh);
  return 0;
 }
 memcpy(nde, de, de->length);
 ddno = de->down ? de_down_pointer(de) : 0;
 hpfs_delete_de(i->i_sb, dnode, de);
 set_last_pointer(i->i_sb, dnode, ddno);
 hpfs_mark_4buffers_dirty(&qbh);
 hpfs_brelse4(&qbh);
 a = hpfs_add_to_dnode(i, to, nde->name, nde->namelen, nde, from);
 kfree(nde);
 if (a) return 0;
 return dno;
}
