
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct inode {int i_ino; int i_mode; int i_mtime; scalar_t__ i_size; int i_sb; int i_nlink; } ;
struct hfs_find_data {int entrylength; int entryoffset; int bnode; TYPE_1__* search_key; } ;
struct hfs_cat_file {int dummy; } ;
struct hfs_cat_dir {int dummy; } ;
struct TYPE_11__ {void* MdDat; int PyLen; int LgLen; int ExtRec; int Flags; int FlNum; int RPyLen; int RLgLen; int RExtRec; } ;
struct TYPE_10__ {int Val; void* MdDat; int DirID; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_3__ file; TYPE_2__ dir; } ;
typedef TYPE_4__ hfs_cat_rec ;
struct TYPE_14__ {int cat_key; struct inode* rsrc_inode; } ;
struct TYPE_13__ {int cat_tree; int ext_tree; } ;
struct TYPE_9__ {int cat; } ;


 int BUG () ;
 int DBG_INODE ;
 int EIO ;

 scalar_t__ HFS_CDR_DIR ;
 scalar_t__ HFS_CDR_FIL ;

 int HFS_FIL_LOCK ;
 int HFS_FIRSTUSER_CNID ;
 TYPE_8__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;

 TYPE_7__* HFS_SB (int ) ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWUSR ;
 int be32_to_cpu (int ) ;
 int cpu_to_be16 (scalar_t__) ;
 int dprint (int ,char*,int) ;
 int hfs_bnode_read (int ,TYPE_4__*,int ,int) ;
 int hfs_bnode_write (int ,TYPE_4__*,int ,int) ;
 scalar_t__ hfs_brec_find (struct hfs_find_data*) ;
 int hfs_btree_write (int ) ;
 int hfs_ext_write_extent (struct inode*) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 scalar_t__ hfs_find_init (int ,struct hfs_find_data*) ;
 int hfs_inode_write_fork (struct inode*,int ,int *,int *) ;
 void* hfs_u_to_mtime (int ) ;

int hfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct inode *main_inode = inode;
 struct hfs_find_data fd;
 hfs_cat_rec rec;

 dprint(DBG_INODE, "hfs_write_inode: %lu\n", inode->i_ino);
 hfs_ext_write_extent(inode);

 if (inode->i_ino < HFS_FIRSTUSER_CNID) {
  switch (inode->i_ino) {
  case 128:
   break;
  case 129:
   hfs_btree_write(HFS_SB(inode->i_sb)->ext_tree);
   return 0;
  case 130:
   hfs_btree_write(HFS_SB(inode->i_sb)->cat_tree);
   return 0;
  default:
   BUG();
   return -EIO;
  }
 }

 if (HFS_IS_RSRC(inode))
  main_inode = HFS_I(inode)->rsrc_inode;

 if (!main_inode->i_nlink)
  return 0;

 if (hfs_find_init(HFS_SB(main_inode->i_sb)->cat_tree, &fd))

  return -EIO;

 fd.search_key->cat = HFS_I(main_inode)->cat_key;
 if (hfs_brec_find(&fd))

  goto out;

 if (S_ISDIR(main_inode->i_mode)) {
  if (fd.entrylength < sizeof(struct hfs_cat_dir))
               ;
  hfs_bnode_read(fd.bnode, &rec, fd.entryoffset,
      sizeof(struct hfs_cat_dir));
  if (rec.type != HFS_CDR_DIR ||
      be32_to_cpu(rec.dir.DirID) != inode->i_ino) {
  }

  rec.dir.MdDat = hfs_u_to_mtime(inode->i_mtime);
  rec.dir.Val = cpu_to_be16(inode->i_size - 2);

  hfs_bnode_write(fd.bnode, &rec, fd.entryoffset,
       sizeof(struct hfs_cat_dir));
 } else if (HFS_IS_RSRC(inode)) {
  hfs_bnode_read(fd.bnode, &rec, fd.entryoffset,
          sizeof(struct hfs_cat_file));
  hfs_inode_write_fork(inode, rec.file.RExtRec,
         &rec.file.RLgLen, &rec.file.RPyLen);
  hfs_bnode_write(fd.bnode, &rec, fd.entryoffset,
    sizeof(struct hfs_cat_file));
 } else {
  if (fd.entrylength < sizeof(struct hfs_cat_file))
               ;
  hfs_bnode_read(fd.bnode, &rec, fd.entryoffset,
      sizeof(struct hfs_cat_file));
  if (rec.type != HFS_CDR_FIL ||
      be32_to_cpu(rec.file.FlNum) != inode->i_ino) {
  }

  if (inode->i_mode & S_IWUSR)
   rec.file.Flags &= ~HFS_FIL_LOCK;
  else
   rec.file.Flags |= HFS_FIL_LOCK;
  hfs_inode_write_fork(inode, rec.file.ExtRec, &rec.file.LgLen, &rec.file.PyLen);
  rec.file.MdDat = hfs_u_to_mtime(inode->i_mtime);

  hfs_bnode_write(fd.bnode, &rec, fd.entryoffset,
       sizeof(struct hfs_cat_file));
 }
out:
 hfs_find_exit(&fd);
 return 0;
}
