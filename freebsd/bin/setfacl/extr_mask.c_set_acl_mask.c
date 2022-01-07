
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acl_tag_t ;
typedef int * acl_t ;
typedef int * acl_entry_t ;


 int ACL_FIRST_ENTRY ;
 scalar_t__ ACL_MASK ;
 int ACL_NEXT_ENTRY ;
 scalar_t__ acl_calc_mask (int **) ;
 int * acl_dup (int *) ;
 int acl_free (int *) ;
 int acl_get_entry (int *,int,int **) ;
 int acl_get_tag_type (int *,scalar_t__*) ;
 int err (int,char*,char const*) ;
 scalar_t__ have_mask ;
 int n_flag ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

int
set_acl_mask(acl_t *prev_acl, const char *filename)
{
 acl_entry_t entry;
 acl_t acl;
 acl_tag_t tag;
 int entry_id;

 entry = ((void*)0);






 if (have_mask)
  return (0);

 acl = acl_dup(*prev_acl);
 if (acl == ((void*)0))
  err(1, "%s: acl_dup() failed", filename);

 if (!n_flag) {







  if (acl_calc_mask(&acl)) {
   warn("%s: acl_calc_mask() failed", filename);
   acl_free(acl);
   return (-1);
  }
 } else {






  entry_id = ACL_FIRST_ENTRY;

  while (acl_get_entry(acl, entry_id, &entry) == 1) {
   entry_id = ACL_NEXT_ENTRY;
   if (acl_get_tag_type(entry, &tag) == -1)
    err(1, "%s: acl_get_tag_type() failed",
        filename);

   if (tag == ACL_MASK) {
    acl_free(acl);
    return (0);
   }
  }







  warnx("%s: warning: no mask entry", filename);
  acl_free(acl);
  return (0);
 }

 acl_free(*prev_acl);
 *prev_acl = acl_dup(acl);
 acl_free(acl);

 return (0);
}
