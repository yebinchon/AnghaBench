
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl_entry {int dummy; } ;
struct posix_acl {TYPE_1__* a_entries; } ;
struct ocfs2_acl_entry {int e_id; int e_perm; int e_tag; } ;
struct TYPE_2__ {int e_id; void* e_perm; void* e_tag; } ;


 int EINVAL ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_NOFS ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;

__attribute__((used)) static struct posix_acl *ocfs2_acl_from_xattr(const void *value, size_t size)
{
 int n, count;
 struct posix_acl *acl;

 if (!value)
  return ((void*)0);
 if (size < sizeof(struct posix_acl_entry))
  return ERR_PTR(-EINVAL);

 count = size / sizeof(struct posix_acl_entry);
 if (count < 0)
  return ERR_PTR(-EINVAL);
 if (count == 0)
  return ((void*)0);

 acl = posix_acl_alloc(count, GFP_NOFS);
 if (!acl)
  return ERR_PTR(-ENOMEM);
 for (n = 0; n < count; n++) {
  struct ocfs2_acl_entry *entry =
   (struct ocfs2_acl_entry *)value;

  acl->a_entries[n].e_tag = le16_to_cpu(entry->e_tag);
  acl->a_entries[n].e_perm = le16_to_cpu(entry->e_perm);
  acl->a_entries[n].e_id = le32_to_cpu(entry->e_id);
  value += sizeof(struct posix_acl_entry);

 }
 return acl;
}
