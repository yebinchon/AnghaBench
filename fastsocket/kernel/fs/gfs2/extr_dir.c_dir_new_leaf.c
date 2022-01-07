
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qstr {int hash; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int lf_next; int lf_depth; } ;
struct gfs2_inode {int i_depth; int i_inode; int i_gl; } ;
struct buffer_head {scalar_t__ b_data; int b_blocknr; } ;


 int ENOSPC ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_be64 (int ) ;
 int get_first_leaf (struct gfs2_inode*,int,struct buffer_head**) ;
 int get_leaf (struct gfs2_inode*,int ,struct buffer_head**) ;
 int gfs2_add_inode_blocks (int *,int) ;
 int gfs2_dinode_out (struct gfs2_inode*,scalar_t__) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 struct gfs2_leaf* new_leaf (struct inode*,struct buffer_head**,int ) ;

__attribute__((used)) static int dir_new_leaf(struct inode *inode, const struct qstr *name)
{
 struct buffer_head *bh, *obh;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_leaf *leaf, *oleaf;
 int error;
 u32 index;
 u64 bn;

 index = name->hash >> (32 - ip->i_depth);
 error = get_first_leaf(ip, index, &obh);
 if (error)
  return error;
 do {
  oleaf = (struct gfs2_leaf *)obh->b_data;
  bn = be64_to_cpu(oleaf->lf_next);
  if (!bn)
   break;
  brelse(obh);
  error = get_leaf(ip, bn, &obh);
  if (error)
   return error;
 } while(1);

 gfs2_trans_add_meta(ip->i_gl, obh);

 leaf = new_leaf(inode, &bh, be16_to_cpu(oleaf->lf_depth));
 if (!leaf) {
  brelse(obh);
  return -ENOSPC;
 }
 oleaf->lf_next = cpu_to_be64(bh->b_blocknr);
 brelse(bh);
 brelse(obh);

 error = gfs2_meta_inode_buffer(ip, &bh);
 if (error)
  return error;
 gfs2_trans_add_meta(ip->i_gl, bh);
 gfs2_add_inode_blocks(&ip->i_inode, 1);
 gfs2_dinode_out(ip, bh->b_data);
 brelse(bh);
 return 0;
}
