
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {int b_size; int b_data; } ;


 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int gfs2_dirent_find_space ;
 struct gfs2_dirent* gfs2_dirent_scan (struct inode*,int ,int ,int ,struct qstr const*,int *) ;
 struct gfs2_dirent* gfs2_init_dirent (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*) ;

__attribute__((used)) static struct gfs2_dirent *gfs2_dirent_alloc(struct inode *inode,
          struct buffer_head *bh,
          const struct qstr *name)
{
 struct gfs2_dirent *dent;
 dent = gfs2_dirent_scan(inode, bh->b_data, bh->b_size,
    gfs2_dirent_find_space, name, ((void*)0));
 if (!dent || IS_ERR(dent))
  return dent;
 return gfs2_init_dirent(inode, dent, name, bh);
}
