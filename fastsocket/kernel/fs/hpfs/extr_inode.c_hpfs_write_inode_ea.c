
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_uid; scalar_t__ i_gid; int i_mode; int i_rdev; int i_sb; } ;
struct hpfs_inode_info {int i_ea_uid; int i_ea_gid; int i_ea_mode; } ;
struct fnode {int dummy; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {int sb_eas; scalar_t__ sb_uid; scalar_t__ sb_gid; int sb_mode; } ;


 int S_IFDIR ;
 int S_IFREG ;
 scalar_t__ S_ISBLK (scalar_t__) ;
 scalar_t__ S_ISCHR (scalar_t__) ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISLNK (int) ;
 scalar_t__ cpu_to_le32 (scalar_t__) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 TYPE_1__* hpfs_sb (int ) ;
 int hpfs_set_ea (struct inode*,struct fnode*,char*,char*,int) ;
 scalar_t__ new_encode_dev (int ) ;

__attribute__((used)) static void hpfs_write_inode_ea(struct inode *i, struct fnode *fnode)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);




          if (hpfs_sb(i->i_sb)->sb_eas >= 2) {
  __le32 ea;
  if ((i->i_uid != hpfs_sb(i->i_sb)->sb_uid) || hpfs_inode->i_ea_uid) {
   ea = cpu_to_le32(i->i_uid);
   hpfs_set_ea(i, fnode, "UID", (char*)&ea, 2);
   hpfs_inode->i_ea_uid = 1;
  }
  if ((i->i_gid != hpfs_sb(i->i_sb)->sb_gid) || hpfs_inode->i_ea_gid) {
   ea = cpu_to_le32(i->i_gid);
   hpfs_set_ea(i, fnode, "GID", (char *)&ea, 2);
   hpfs_inode->i_ea_gid = 1;
  }
  if (!S_ISLNK(i->i_mode))
   if ((i->i_mode != ((hpfs_sb(i->i_sb)->sb_mode & ~(S_ISDIR(i->i_mode) ? 0 : 0111))
     | (S_ISDIR(i->i_mode) ? S_IFDIR : S_IFREG))
     && i->i_mode != ((hpfs_sb(i->i_sb)->sb_mode & ~(S_ISDIR(i->i_mode) ? 0222 : 0333))
     | (S_ISDIR(i->i_mode) ? S_IFDIR : S_IFREG))) || hpfs_inode->i_ea_mode) {
    ea = cpu_to_le32(i->i_mode);

    hpfs_set_ea(i, fnode, "MODE", (char *)&ea, 2);
    hpfs_inode->i_ea_mode = 1;
   }
  if (S_ISBLK(i->i_mode) || S_ISCHR(i->i_mode)) {
   ea = cpu_to_le32(new_encode_dev(i->i_rdev));
   hpfs_set_ea(i, fnode, "DEV", (char *)&ea, 4);
  }
 }
}
