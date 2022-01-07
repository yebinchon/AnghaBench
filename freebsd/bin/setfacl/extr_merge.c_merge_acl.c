
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_tag_t ;
typedef int * acl_t ;
typedef int acl_permset_t ;
typedef int acl_flagset_t ;
typedef scalar_t__ acl_entry_type_t ;
typedef int acl_entry_t ;


 int ACL_BRAND_NFS4 ;

 int ACL_FIRST_ENTRY ;



 int ACL_NEXT_ENTRY ;



 int acl_copy_entry (int ,int ) ;
 int acl_create_entry (int **,int *) ;
 int acl_create_entry_np (int **,int *,int) ;
 int * acl_dup (int *) ;
 int acl_free (int *) ;
 int acl_get_brand_np (int *,int*) ;
 int acl_get_entry (int *,int,int *) ;
 scalar_t__ acl_get_entry_type_np (int ,scalar_t__*) ;
 int acl_get_flagset_np (int ,int *) ;
 int acl_get_permset (int ,int *) ;
 int acl_get_tag_type (int ,int*) ;
 int acl_set_entry_type_np (int ,scalar_t__) ;
 int acl_set_flagset_np (int ,int ) ;
 int acl_set_permset (int ,int ) ;
 int brand_name (int) ;
 scalar_t__ branding_mismatch (int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,int) ;
 int have_mask ;
 int merge_user_group (int *,int *,int) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*,int ,int ) ;

int
merge_acl(acl_t acl, acl_t *prev_acl, const char *filename)
{
 acl_entry_t entry, entry_new;
 acl_permset_t permset;
 acl_t acl_new;
 acl_tag_t tag, tag_new;
 acl_entry_type_t entry_type, entry_type_new;
 acl_flagset_t flagset;
 int entry_id, entry_id_new, have_entry, had_entry, entry_number = 0;
 int acl_brand, prev_acl_brand;

 acl_get_brand_np(acl, &acl_brand);
 acl_get_brand_np(*prev_acl, &prev_acl_brand);

 if (branding_mismatch(acl_brand, prev_acl_brand)) {
  warnx("%s: branding mismatch; existing ACL is %s, "
      "entry to be merged is %s", filename,
      brand_name(prev_acl_brand), brand_name(acl_brand));
  return (-1);
 }

 acl_new = acl_dup(*prev_acl);
 if (acl_new == ((void*)0))
  err(1, "%s: acl_dup() failed", filename);

 entry_id = ACL_FIRST_ENTRY;

 while (acl_get_entry(acl, entry_id, &entry) == 1) {
  entry_id = ACL_NEXT_ENTRY;
  have_entry = 0;
  had_entry = 0;


  if (acl_get_tag_type(entry, &tag) == -1)
   err(1, "%s: acl_get_tag_type() failed - "
       "invalid ACL entry", filename);
  if (tag == 131)
   have_mask = 1;


  entry_id_new = ACL_FIRST_ENTRY;
  while (acl_get_entry(acl_new, entry_id_new, &entry_new) == 1) {
   entry_id_new = ACL_NEXT_ENTRY;

   if (acl_get_tag_type(entry, &tag) == -1)
    err(1, "%s: acl_get_tag_type() failed",
        filename);
   if (acl_get_tag_type(entry_new, &tag_new) == -1)
    err(1, "%s: acl_get_tag_type() failed",
        filename);
   if (tag != tag_new)
    continue;





   if (acl_brand == ACL_BRAND_NFS4) {
    if (acl_get_entry_type_np(entry, &entry_type))
     err(1, "%s: acl_get_entry_type_np() "
         "failed", filename);
    if (acl_get_entry_type_np(entry_new, &entry_type_new))
     err(1, "%s: acl_get_entry_type_np() "
         "failed", filename);
    if (entry_type != entry_type_new)
     continue;
   }

   switch(tag) {
   case 129:
   case 133:
    have_entry = merge_user_group(&entry,
        &entry_new, acl_brand);
    if (have_entry == 0)
     break;

   case 128:
   case 132:
   case 130:
   case 131:
   case 134:
    if (acl_get_permset(entry, &permset) == -1)
     err(1, "%s: acl_get_permset() failed",
         filename);
    if (acl_set_permset(entry_new, permset) == -1)
     err(1, "%s: acl_set_permset() failed",
         filename);

    if (acl_brand == ACL_BRAND_NFS4) {
     if (acl_get_entry_type_np(entry, &entry_type))
      err(1, "%s: acl_get_entry_type_np() failed",
          filename);
     if (acl_set_entry_type_np(entry_new, entry_type))
      err(1, "%s: acl_set_entry_type_np() failed",
          filename);
     if (acl_get_flagset_np(entry, &flagset))
      err(1, "%s: acl_get_flagset_np() failed",
          filename);
     if (acl_set_flagset_np(entry_new, flagset))
      err(1, "%s: acl_set_flagset_np() failed",
          filename);
    }
    had_entry = have_entry = 1;
    break;
   default:

    errx(1, "%s: invalid tag type: %i", filename, tag);
    break;
   }
  }


  if (had_entry == 0) {






   if (acl_brand == ACL_BRAND_NFS4) {
    if (acl_create_entry_np(&acl_new, &entry_new, entry_number) == -1) {
     warn("%s: acl_create_entry_np() failed", filename);
     acl_free(acl_new);
     return (-1);
    }






    entry_number++;
   } else {
    if (acl_create_entry(&acl_new, &entry_new) == -1) {
     warn("%s: acl_create_entry() failed", filename);
     acl_free(acl_new);
     return (-1);
    }
   }
   if (acl_copy_entry(entry_new, entry) == -1)
    err(1, "%s: acl_copy_entry() failed", filename);
  }
 }

 acl_free(*prev_acl);
 *prev_acl = acl_new;

 return (0);
}
