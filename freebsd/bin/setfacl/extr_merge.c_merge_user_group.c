
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int acl_permset_t ;
typedef int acl_flagset_t ;
typedef int acl_entry_type_t ;
typedef int acl_entry_t ;


 int ACL_BRAND_NFS4 ;
 int acl_free (scalar_t__*) ;
 scalar_t__ acl_get_entry_type_np (int ,int *) ;
 scalar_t__ acl_get_flagset_np (int ,int *) ;
 int acl_get_permset (int ,int *) ;
 scalar_t__* acl_get_qualifier (int ) ;
 scalar_t__ acl_set_entry_type_np (int ,int ) ;
 scalar_t__ acl_set_flagset_np (int ,int ) ;
 int acl_set_permset (int ,int ) ;
 int err (int,char*) ;

__attribute__((used)) static int
merge_user_group(acl_entry_t *entry, acl_entry_t *entry_new, int acl_brand)
{
 acl_permset_t permset;
 acl_entry_type_t entry_type;
 acl_flagset_t flagset;
 int have_entry;
 uid_t *id, *id_new;

 have_entry = 0;

 id = acl_get_qualifier(*entry);
 if (id == ((void*)0))
  err(1, "acl_get_qualifier() failed");
 id_new = acl_get_qualifier(*entry_new);
 if (id_new == ((void*)0))
  err(1, "acl_get_qualifier() failed");
 if (*id == *id_new) {

  if (acl_get_permset(*entry, &permset) == -1)
   err(1, "acl_get_permset() failed");
  if (acl_set_permset(*entry_new, permset) == -1)
   err(1, "acl_set_permset() failed");

  if (acl_brand == ACL_BRAND_NFS4) {
   if (acl_get_entry_type_np(*entry, &entry_type))
    err(1, "acl_get_entry_type_np() failed");
   if (acl_set_entry_type_np(*entry_new, entry_type))
    err(1, "acl_set_entry_type_np() failed");
   if (acl_get_flagset_np(*entry, &flagset))
    err(1, "acl_get_flagset_np() failed");
   if (acl_set_flagset_np(*entry_new, flagset))
    err(1, "acl_set_flagset_np() failed");
  }

  have_entry = 1;
 }
 acl_free(id);
 acl_free(id_new);

 return (have_entry);
}
