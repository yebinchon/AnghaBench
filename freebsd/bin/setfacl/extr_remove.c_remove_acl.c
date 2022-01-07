
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_tag_t ;
typedef int * acl_t ;
typedef int acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 scalar_t__ ACL_MASK ;
 int ACL_NEXT_ENTRY ;
 scalar_t__ ACL_UNDEFINED_TAG ;
 int acl_delete_entry (int *,int ) ;
 int * acl_dup (int *) ;
 int acl_free (int *) ;
 int acl_get_brand_np (int *,int*) ;
 int acl_get_entry (int *,int,int *) ;
 int acl_get_tag_type (int ,scalar_t__*) ;
 int brand_name (int) ;
 scalar_t__ branding_mismatch (int,int) ;
 int err (int,char*,char const*) ;
 int have_mask ;
 int warnx (char*,char const*,...) ;

int
remove_acl(acl_t acl, acl_t *prev_acl, const char *filename)
{
 acl_entry_t entry;
 acl_t acl_new;
 acl_tag_t tag;
 int carried_error, entry_id, acl_brand, prev_acl_brand;

 carried_error = 0;

 acl_get_brand_np(acl, &acl_brand);
 acl_get_brand_np(*prev_acl, &prev_acl_brand);

 if (branding_mismatch(acl_brand, prev_acl_brand)) {
  warnx("%s: branding mismatch; existing ACL is %s, "
      "entry to be removed is %s", filename,
      brand_name(prev_acl_brand), brand_name(acl_brand));
  return (-1);
 }

 carried_error = 0;

 acl_new = acl_dup(*prev_acl);
 if (acl_new == ((void*)0))
  err(1, "%s: acl_dup() failed", filename);

 tag = ACL_UNDEFINED_TAG;


 entry_id = ACL_FIRST_ENTRY;
 while (acl_get_entry(acl, entry_id, &entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;
  if (acl_get_tag_type(entry, &tag) == -1)
   err(1, "%s: acl_get_tag_type() failed", filename);
  if (tag == ACL_MASK)
   have_mask = 1;
  if (acl_delete_entry(acl_new, entry) == -1) {
   carried_error++;
   warnx("%s: cannot remove non-existent ACL entry",
       filename);
  }
 }

 acl_free(*prev_acl);
 *prev_acl = acl_new;

 if (carried_error)
  return (-1);

 return (0);
}
