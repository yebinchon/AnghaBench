
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_mount_opt; } ;
struct inode {int i_sb; } ;


 int OCFS2_MOUNT_NOUSERXATTR ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 char const* XATTR_USER_PREFIX ;
 size_t XATTR_USER_PREFIX_LEN ;
 int memcpy (char*,char const*,size_t const) ;

__attribute__((used)) static size_t ocfs2_xattr_user_list(struct inode *inode, char *list,
        size_t list_size, const char *name,
        size_t name_len)
{
 const size_t prefix_len = XATTR_USER_PREFIX_LEN;
 const size_t total_len = prefix_len + name_len + 1;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 if (osb->s_mount_opt & OCFS2_MOUNT_NOUSERXATTR)
  return 0;

 if (list && total_len <= list_size) {
  memcpy(list, XATTR_USER_PREFIX, prefix_len);
  memcpy(list + prefix_len, name, name_len);
  list[prefix_len + name_len] = '\0';
 }
 return total_len;
}
