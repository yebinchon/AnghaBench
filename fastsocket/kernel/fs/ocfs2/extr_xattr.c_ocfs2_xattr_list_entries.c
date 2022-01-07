
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; int xh_count; } ;
struct ocfs2_xattr_entry {int xe_name_len; int xe_name_offset; } ;
struct inode {int dummy; } ;


 int le16_to_cpu (int ) ;
 int ocfs2_xattr_get_type (struct ocfs2_xattr_entry*) ;
 int ocfs2_xattr_list_entry (char*,size_t,size_t*,char const*,char const*,int ) ;
 char* ocfs2_xattr_prefix (int) ;

__attribute__((used)) static int ocfs2_xattr_list_entries(struct inode *inode,
        struct ocfs2_xattr_header *header,
        char *buffer, size_t buffer_size)
{
 size_t result = 0;
 int i, type, ret;
 const char *prefix, *name;

 for (i = 0 ; i < le16_to_cpu(header->xh_count); i++) {
  struct ocfs2_xattr_entry *entry = &header->xh_entries[i];
  type = ocfs2_xattr_get_type(entry);
  prefix = ocfs2_xattr_prefix(type);

  if (prefix) {
   name = (const char *)header +
    le16_to_cpu(entry->xe_name_offset);

   ret = ocfs2_xattr_list_entry(buffer, buffer_size,
           &result, prefix, name,
           entry->xe_name_len);
   if (ret)
    return ret;
  }
 }

 return result;
}
