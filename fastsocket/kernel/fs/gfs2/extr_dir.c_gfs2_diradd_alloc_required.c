
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 int brelse (struct buffer_head*) ;
 int gfs2_dirent_find_space ;
 struct gfs2_dirent* gfs2_dirent_search (struct inode*,struct qstr const*,int ,struct buffer_head**) ;

int gfs2_diradd_alloc_required(struct inode *inode, const struct qstr *name)
{
 struct gfs2_dirent *dent;
 struct buffer_head *bh;

 dent = gfs2_dirent_search(inode, name, gfs2_dirent_find_space, &bh);
 if (!dent) {
  return 1;
 }
 if (IS_ERR(dent))
  return PTR_ERR(dent);
 brelse(bh);
 return 0;
}
