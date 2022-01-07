
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;
typedef int acl_flagset_t ;
typedef int acl_entry_t ;


 int ACL_BRAND_NFS4 ;
 int ACL_ENTRY_DIRECTORY_INHERIT ;
 int ACL_ENTRY_FILE_INHERIT ;
 int ACL_ENTRY_INHERIT_ONLY ;
 int ACL_ENTRY_NO_PROPAGATE_INHERIT ;
 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 scalar_t__ acl_delete_entry (int *,int ) ;
 scalar_t__ acl_delete_flag_np (int ,int) ;
 int * acl_dup (int *) ;
 int acl_get_brand_np (int *,int*) ;
 int acl_get_entry (int *,int,int *) ;
 int acl_get_flag_np (int ,int ) ;
 scalar_t__ acl_get_flagset_np (int ,int *) ;
 int warn (char*) ;

__attribute__((used)) static acl_t
clear_inheritance_flags(acl_t acl)
{
 acl_t nacl;
 acl_entry_t acl_entry;
 acl_flagset_t acl_flagset;
 int acl_brand, entry_id;

 (void)acl_get_brand_np(acl, &acl_brand);
 if (acl_brand != ACL_BRAND_NFS4)
  return (acl);

 nacl = acl_dup(acl);
 if (nacl == ((void*)0)) {
  warn("acl_dup() failed");
  return (acl);
 }

 entry_id = ACL_FIRST_ENTRY;
 while (acl_get_entry(nacl, entry_id, &acl_entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;
  if (acl_get_flagset_np(acl_entry, &acl_flagset) != 0) {
   warn("acl_get_flagset_np() failed");
   continue;
  }
  if (acl_get_flag_np(acl_flagset, ACL_ENTRY_INHERIT_ONLY) == 1) {
   if (acl_delete_entry(nacl, acl_entry) != 0)
    warn("acl_delete_entry() failed");
   continue;
  }
  if (acl_delete_flag_np(acl_flagset,
      ACL_ENTRY_FILE_INHERIT |
      ACL_ENTRY_DIRECTORY_INHERIT |
      ACL_ENTRY_NO_PROPAGATE_INHERIT) != 0)
   warn("acl_delete_flag_np() failed");
 }

 return (nacl);
}
