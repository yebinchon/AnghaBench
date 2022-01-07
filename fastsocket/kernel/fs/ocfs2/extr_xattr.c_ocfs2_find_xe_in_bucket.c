
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {size_t xe_name_len; int xe_name_hash; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int i_sb; } ;


 char* bucket_block (struct ocfs2_xattr_bucket*,int) ;
 struct ocfs2_xattr_header* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcmp (char const*,char*,size_t) ;
 int mlog_errno (int) ;
 int ocfs2_xattr_bucket_get_name_value (int ,struct ocfs2_xattr_header*,int,int*,int*) ;
 int ocfs2_xattr_get_type (struct ocfs2_xattr_entry*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int ocfs2_find_xe_in_bucket(struct inode *inode,
       struct ocfs2_xattr_bucket *bucket,
       int name_index,
       const char *name,
       u32 name_hash,
       u16 *xe_index,
       int *found)
{
 int i, ret = 0, cmp = 1, block_off, new_offset;
 struct ocfs2_xattr_header *xh = bucket_xh(bucket);
 size_t name_len = strlen(name);
 struct ocfs2_xattr_entry *xe = ((void*)0);
 char *xe_name;





 for (i = 0; i < le16_to_cpu(xh->xh_count); i++) {
  xe = &xh->xh_entries[i];

  if (name_hash > le32_to_cpu(xe->xe_name_hash))
   continue;
  else if (name_hash < le32_to_cpu(xe->xe_name_hash))
   break;

  cmp = name_index - ocfs2_xattr_get_type(xe);
  if (!cmp)
   cmp = name_len - xe->xe_name_len;
  if (cmp)
   continue;

  ret = ocfs2_xattr_bucket_get_name_value(inode->i_sb,
       xh,
       i,
       &block_off,
       &new_offset);
  if (ret) {
   mlog_errno(ret);
   break;
  }


  xe_name = bucket_block(bucket, block_off) + new_offset;
  if (!memcmp(name, xe_name, name_len)) {
   *xe_index = i;
   *found = 1;
   ret = 0;
   break;
  }
 }

 return ret;
}
