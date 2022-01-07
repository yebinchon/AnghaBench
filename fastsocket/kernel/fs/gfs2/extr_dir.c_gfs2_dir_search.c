
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int no_formal_ino; int no_addr; } ;
struct gfs2_dirent {TYPE_1__ de_inum; int de_type; } ;
struct buffer_head {int dummy; } ;


 int ENOENT ;
 struct inode* ERR_CAST (struct gfs2_dirent*) ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int gfs2_dirent_find ;
 struct gfs2_dirent* gfs2_dirent_search (struct inode*,struct qstr const*,int ,struct buffer_head**) ;
 struct inode* gfs2_inode_lookup (int ,int ,int ,int ,int ) ;

struct inode *gfs2_dir_search(struct inode *dir, const struct qstr *name)
{
 struct buffer_head *bh;
 struct gfs2_dirent *dent;
 struct inode *inode;

 dent = gfs2_dirent_search(dir, name, gfs2_dirent_find, &bh);
 if (dent) {
  if (IS_ERR(dent))
   return ERR_CAST(dent);
  inode = gfs2_inode_lookup(dir->i_sb,
    be16_to_cpu(dent->de_type),
    be64_to_cpu(dent->de_inum.no_addr),
    be64_to_cpu(dent->de_inum.no_formal_ino), 0);
  brelse(bh);
  return inode;
 }
 return ERR_PTR(-ENOENT);
}
