
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {size_t (* list ) (struct inode*,char*,size_t,int ,int ) ;} ;
struct inode {int dummy; } ;
struct ext3_xattr_entry {int e_name_len; int e_name; int e_name_index; } ;


 int ERANGE ;
 struct ext3_xattr_entry* EXT3_XATTR_NEXT (struct ext3_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext3_xattr_entry*) ;
 struct xattr_handler* ext3_xattr_handler (int ) ;
 size_t stub1 (struct inode*,char*,size_t,int ,int ) ;

__attribute__((used)) static int
ext3_xattr_list_entries(struct inode *inode, struct ext3_xattr_entry *entry,
   char *buffer, size_t buffer_size)
{
 size_t rest = buffer_size;

 for (; !IS_LAST_ENTRY(entry); entry = EXT3_XATTR_NEXT(entry)) {
  struct xattr_handler *handler =
   ext3_xattr_handler(entry->e_name_index);

  if (handler) {
   size_t size = handler->list(inode, buffer, rest,
          entry->e_name,
          entry->e_name_len);
   if (buffer) {
    if (size > rest)
     return -ERANGE;
    buffer += size;
   }
   rest -= size;
  }
 }
 return buffer_size - rest;
}
