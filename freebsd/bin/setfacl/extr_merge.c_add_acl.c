
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int * acl_t ;
typedef int acl_entry_t ;


 int ACL_BRAND_NFS4 ;
 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 int acl_copy_entry (int ,int ) ;
 int acl_create_entry_np (int **,int *,int ) ;
 int * acl_dup (int *) ;
 int acl_free (int *) ;
 int acl_get_brand_np (int *,int*) ;
 int acl_get_entry (int *,int,int *) ;
 int brand_name (int) ;
 scalar_t__ branding_mismatch (int,int) ;
 int err (int,char*,char const*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*,...) ;

int
add_acl(acl_t acl, uint entry_number, acl_t *prev_acl, const char *filename)
{
 acl_entry_t entry, entry_new;
 acl_t acl_new;
 int entry_id, acl_brand, prev_acl_brand;

 acl_get_brand_np(acl, &acl_brand);
 acl_get_brand_np(*prev_acl, &prev_acl_brand);

 if (prev_acl_brand != ACL_BRAND_NFS4) {
  warnx("%s: the '-a' option is only applicable to NFSv4 ACLs",
      filename);
  return (-1);
 }

 if (branding_mismatch(acl_brand, ACL_BRAND_NFS4)) {
  warnx("%s: branding mismatch; existing ACL is NFSv4, "
      "entry to be added is %s", filename,
      brand_name(acl_brand));
  return (-1);
 }

 acl_new = acl_dup(*prev_acl);
 if (acl_new == ((void*)0))
  err(1, "%s: acl_dup() failed", filename);

 entry_id = ACL_FIRST_ENTRY;

 while (acl_get_entry(acl, entry_id, &entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;

  if (acl_create_entry_np(&acl_new, &entry_new, entry_number) == -1) {
   warn("%s: acl_create_entry_np() failed", filename);
   acl_free(acl_new);
   return (-1);
  }







  entry_number++;

  if (acl_copy_entry(entry_new, entry) == -1)
   err(1, "%s: acl_copy_entry() failed", filename);
 }

 acl_free(*prev_acl);
 *prev_acl = acl_new;

 return (0);
}
