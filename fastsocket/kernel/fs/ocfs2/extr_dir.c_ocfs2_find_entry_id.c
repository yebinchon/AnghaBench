
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_inline_data {int id_data; } ;
struct ocfs2_dir_entry {int dummy; } ;
struct TYPE_2__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int brelse (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_search_dirblock (struct buffer_head*,struct inode*,char const*,int,int ,int ,int ,struct ocfs2_dir_entry**) ;

__attribute__((used)) static struct buffer_head *ocfs2_find_entry_id(const char *name,
            int namelen,
            struct inode *dir,
            struct ocfs2_dir_entry **res_dir)
{
 int ret, found;
 struct buffer_head *di_bh = ((void*)0);
 struct ocfs2_dinode *di;
 struct ocfs2_inline_data *data;

 ret = ocfs2_read_inode_block(dir, &di_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 di = (struct ocfs2_dinode *)di_bh->b_data;
 data = &di->id2.i_data;

 found = ocfs2_search_dirblock(di_bh, dir, name, namelen, 0,
          data->id_data, i_size_read(dir), res_dir);
 if (found == 1)
  return di_bh;

 brelse(di_bh);
out:
 return ((void*)0);
}
