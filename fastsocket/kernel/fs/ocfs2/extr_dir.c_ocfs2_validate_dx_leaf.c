
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_dx_leaf {int dl_signature; int dl_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int ML_ERROR ;
 int OCFS2_IS_VALID_DX_LEAF (struct ocfs2_dx_leaf*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 int ocfs2_error (struct super_block*,char*,int,int ) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;

__attribute__((used)) static int ocfs2_validate_dx_leaf(struct super_block *sb,
      struct buffer_head *bh)
{
 int ret;
 struct ocfs2_dx_leaf *dx_leaf = (struct ocfs2_dx_leaf *)bh->b_data;

 BUG_ON(!buffer_uptodate(bh));

 ret = ocfs2_validate_meta_ecc(sb, bh->b_data, &dx_leaf->dl_check);
 if (ret) {
  mlog(ML_ERROR,
       "Checksum failed for dir index leaf block %llu\n",
       (unsigned long long)bh->b_blocknr);
  return ret;
 }

 if (!OCFS2_IS_VALID_DX_LEAF(dx_leaf)) {
  ocfs2_error(sb, "Dir Index Leaf has bad signature %.*s",
       7, dx_leaf->dl_signature);
  return -EROFS;
 }

 return 0;
}
