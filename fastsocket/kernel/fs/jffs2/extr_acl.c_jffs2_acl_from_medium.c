
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct posix_acl {TYPE_1__* a_entries; } ;
struct jffs2_acl_header {int a_version; } ;
struct jffs2_acl_entry_short {int dummy; } ;
struct jffs2_acl_entry {int e_id; int e_perm; int e_tag; } ;
struct TYPE_2__ {int e_tag; void* e_id; void* e_perm; } ;






 void* ACL_UNDEFINED_ID ;


 int EINVAL ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ JFFS2_ACL_VERSION ;
 int JFFS2_WARNING (char*,scalar_t__) ;
 void* je16_to_cpu (int ) ;
 void* je32_to_cpu (int ) ;
 int jffs2_acl_count (size_t) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static struct posix_acl *jffs2_acl_from_medium(void *value, size_t size)
{
 void *end = value + size;
 struct jffs2_acl_header *header = value;
 struct jffs2_acl_entry *entry;
 struct posix_acl *acl;
 uint32_t ver;
 int i, count;

 if (!value)
  return ((void*)0);
 if (size < sizeof(struct jffs2_acl_header))
  return ERR_PTR(-EINVAL);
 ver = je32_to_cpu(header->a_version);
 if (ver != JFFS2_ACL_VERSION) {
  JFFS2_WARNING("Invalid ACL version. (=%u)\n", ver);
  return ERR_PTR(-EINVAL);
 }

 value += sizeof(struct jffs2_acl_header);
 count = jffs2_acl_count(size);
 if (count < 0)
  return ERR_PTR(-EINVAL);
 if (count == 0)
  return ((void*)0);

 acl = posix_acl_alloc(count, GFP_KERNEL);
 if (!acl)
  return ERR_PTR(-ENOMEM);

 for (i=0; i < count; i++) {
  entry = value;
  if (value + sizeof(struct jffs2_acl_entry_short) > end)
   goto fail;
  acl->a_entries[i].e_tag = je16_to_cpu(entry->e_tag);
  acl->a_entries[i].e_perm = je16_to_cpu(entry->e_perm);
  switch (acl->a_entries[i].e_tag) {
   case 128:
   case 132:
   case 131:
   case 130:
    value += sizeof(struct jffs2_acl_entry_short);
    acl->a_entries[i].e_id = ACL_UNDEFINED_ID;
    break;

   case 129:
   case 133:
    value += sizeof(struct jffs2_acl_entry);
    if (value > end)
     goto fail;
    acl->a_entries[i].e_id = je32_to_cpu(entry->e_id);
    break;

   default:
    goto fail;
  }
 }
 if (value != end)
  goto fail;
 return acl;
 fail:
 posix_acl_release(acl);
 return ERR_PTR(-EINVAL);
}
