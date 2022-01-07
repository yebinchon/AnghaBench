
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int dummy; } ;


 size_t OCFS2_XATTR_INLINE_SIZE ;
 int OCFS2_XATTR_ROOT_SIZE ;
 int OCFS2_XATTR_SIZE (int) ;

__attribute__((used)) static int ocfs2_xattr_entry_real_size(int name_len, size_t value_len)
{
 int size = 0;

 if (value_len <= OCFS2_XATTR_INLINE_SIZE)
  size = OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_SIZE(value_len);
 else
  size = OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_ROOT_SIZE;
 size += sizeof(struct ocfs2_xattr_entry);

 return size;
}
