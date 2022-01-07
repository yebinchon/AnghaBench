
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_xattr_entry {int xe_name_hash; int xe_name_len; int xe_name_offset; } ;
struct inode {int dummy; } ;


 int cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int ocfs2_xattr_name_hash (struct inode*,char*,int ) ;

__attribute__((used)) static void ocfs2_xattr_hash_entry(struct inode *inode,
       struct ocfs2_xattr_header *header,
       struct ocfs2_xattr_entry *entry)
{
 u32 hash = 0;
 char *name = (char *)header + le16_to_cpu(entry->xe_name_offset);

 hash = ocfs2_xattr_name_hash(inode, name, entry->xe_name_len);
 entry->xe_name_hash = cpu_to_le32(hash);

 return;
}
