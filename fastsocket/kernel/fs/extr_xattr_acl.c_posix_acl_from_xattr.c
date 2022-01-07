
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct posix_acl_entry {int e_tag; int e_id; void* e_perm; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;
struct TYPE_3__ {scalar_t__ a_version; } ;
typedef TYPE_1__ posix_acl_xattr_header ;
struct TYPE_4__ {int e_id; int e_perm; int e_tag; } ;
typedef TYPE_2__ posix_acl_xattr_entry ;






 int ACL_UNDEFINED_ID ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int POSIX_ACL_XATTR_VERSION ;
 scalar_t__ cpu_to_le32 (int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_xattr_count (size_t) ;

struct posix_acl *
posix_acl_from_xattr(const void *value, size_t size)
{
 posix_acl_xattr_header *header = (posix_acl_xattr_header *)value;
 posix_acl_xattr_entry *entry = (posix_acl_xattr_entry *)(header+1), *end;
 int count;
 struct posix_acl *acl;
 struct posix_acl_entry *acl_e;

 if (!value)
  return ((void*)0);
 if (size < sizeof(posix_acl_xattr_header))
   return ERR_PTR(-EINVAL);
 if (header->a_version != cpu_to_le32(POSIX_ACL_XATTR_VERSION))
  return ERR_PTR(-EOPNOTSUPP);

 count = posix_acl_xattr_count(size);
 if (count < 0)
  return ERR_PTR(-EINVAL);
 if (count == 0)
  return ((void*)0);

 acl = posix_acl_alloc(count, GFP_NOFS);
 if (!acl)
  return ERR_PTR(-ENOMEM);
 acl_e = acl->a_entries;

 for (end = entry + count; entry != end; acl_e++, entry++) {
  acl_e->e_tag = le16_to_cpu(entry->e_tag);
  acl_e->e_perm = le16_to_cpu(entry->e_perm);

  switch(acl_e->e_tag) {
   case 128:
   case 132:
   case 131:
   case 130:
    acl_e->e_id = ACL_UNDEFINED_ID;
    break;

   case 129:
   case 133:
    acl_e->e_id = le32_to_cpu(entry->e_id);
    break;

   default:
    goto fail;
  }
 }
 return acl;

fail:
 posix_acl_release(acl);
 return ERR_PTR(-EINVAL);
}
