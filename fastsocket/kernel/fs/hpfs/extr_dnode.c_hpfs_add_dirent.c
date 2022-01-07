
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; int i_version; } ;
struct hpfs_inode_info {int i_dno; } ;
struct hpfs_dirent {scalar_t__ down; int last; int namelen; int name; } ;
struct dnode {int dummy; } ;
typedef int dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;


 int FREE_DNODES_ADD ;
 int de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* de_next_de (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_end_de (struct dnode*) ;
 struct hpfs_dirent* dnode_first_de (struct dnode*) ;
 int hpfs_add_to_dnode (struct inode*,int ,unsigned char*,unsigned int,struct hpfs_dirent*,int ) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_check_free_dnodes (int ,int ) ;
 int hpfs_compare_names (int ,unsigned char*,unsigned int,int ,int ,int ) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int hpfs_lock_creation (int ) ;
 struct dnode* hpfs_map_dnode (int ,int ,struct quad_buffer_head*) ;
 TYPE_1__* hpfs_sb (int ) ;
 scalar_t__ hpfs_stop_cycles (int ,int ,int*,int*,char*) ;
 int hpfs_unlock_creation (int ) ;

int hpfs_add_dirent(struct inode *i, unsigned char *name, unsigned namelen,
      struct hpfs_dirent *new_de, int cdepth)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);
 struct dnode *d;
 struct hpfs_dirent *de, *de_end;
 struct quad_buffer_head qbh;
 dnode_secno dno;
 int c;
 int c1, c2 = 0;
 dno = hpfs_inode->i_dno;
 down:
 if (hpfs_sb(i->i_sb)->sb_chk)
  if (hpfs_stop_cycles(i->i_sb, dno, &c1, &c2, "hpfs_add_dirent")) return 1;
 if (!(d = hpfs_map_dnode(i->i_sb, dno, &qbh))) return 1;
 de_end = dnode_end_de(d);
 for (de = dnode_first_de(d); de < de_end; de = de_next_de(de)) {
  if (!(c = hpfs_compare_names(i->i_sb, name, namelen, de->name, de->namelen, de->last))) {
   hpfs_brelse4(&qbh);
   return -1;
  }
  if (c < 0) {
   if (de->down) {
    dno = de_down_pointer(de);
    hpfs_brelse4(&qbh);
    goto down;
   }
   break;
  }
 }
 hpfs_brelse4(&qbh);
 if (!cdepth) hpfs_lock_creation(i->i_sb);
 if (hpfs_check_free_dnodes(i->i_sb, FREE_DNODES_ADD)) {
  c = 1;
  goto ret;
 }
 i->i_version++;
 c = hpfs_add_to_dnode(i, dno, name, namelen, new_de, 0);
 ret:
 if (!cdepth) hpfs_unlock_creation(i->i_sb);
 return c;
}
