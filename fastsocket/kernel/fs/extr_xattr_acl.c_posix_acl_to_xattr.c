
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct posix_acl {int a_count; TYPE_1__* a_entries; } ;
struct TYPE_5__ {void* a_version; TYPE_3__* a_entries; } ;
typedef TYPE_2__ posix_acl_xattr_header ;
struct TYPE_6__ {void* e_id; void* e_perm; void* e_tag; } ;
typedef TYPE_3__ posix_acl_xattr_entry ;
struct TYPE_4__ {int e_id; int e_perm; int e_tag; } ;


 int ERANGE ;
 int POSIX_ACL_XATTR_VERSION ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int posix_acl_xattr_size (int) ;

int
posix_acl_to_xattr(const struct posix_acl *acl, void *buffer, size_t size)
{
 posix_acl_xattr_header *ext_acl = (posix_acl_xattr_header *)buffer;
 posix_acl_xattr_entry *ext_entry = ext_acl->a_entries;
 int real_size, n;

 real_size = posix_acl_xattr_size(acl->a_count);
 if (!buffer)
  return real_size;
 if (real_size > size)
  return -ERANGE;

 ext_acl->a_version = cpu_to_le32(POSIX_ACL_XATTR_VERSION);

 for (n=0; n < acl->a_count; n++, ext_entry++) {
  ext_entry->e_tag = cpu_to_le16(acl->a_entries[n].e_tag);
  ext_entry->e_perm = cpu_to_le16(acl->a_entries[n].e_perm);
  ext_entry->e_id = cpu_to_le32(acl->a_entries[n].e_id);
 }
 return real_size;
}
