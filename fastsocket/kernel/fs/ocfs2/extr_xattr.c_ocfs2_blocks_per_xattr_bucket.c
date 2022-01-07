
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct super_block {int s_blocksize_bits; } ;


 int OCFS2_XATTR_BUCKET_SIZE ;

__attribute__((used)) static inline u16 ocfs2_blocks_per_xattr_bucket(struct super_block *sb)
{
 return OCFS2_XATTR_BUCKET_SIZE / (1 << sb->s_blocksize_bits);
}
