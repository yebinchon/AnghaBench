
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gfs2_inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int get_leaf (struct gfs2_inode*,int ,struct buffer_head**) ;
 int get_leaf_nr (struct gfs2_inode*,int ,int *) ;

__attribute__((used)) static int get_first_leaf(struct gfs2_inode *dip, u32 index,
     struct buffer_head **bh_out)
{
 u64 leaf_no;
 int error;

 error = get_leaf_nr(dip, index, &leaf_no);
 if (!error)
  error = get_leaf(dip, leaf_no, bh_out);

 return error;
}
