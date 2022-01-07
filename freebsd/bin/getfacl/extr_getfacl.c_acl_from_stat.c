
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int * acl_t ;
typedef int acl_permset_t ;
typedef int acl_entry_t ;


 int ACL_EXECUTE ;
 int ACL_GROUP_OBJ ;
 int ACL_OTHER ;
 int ACL_READ ;
 int ACL_USER_OBJ ;
 int ACL_WRITE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int acl_add_perm (int ,int ) ;
 int acl_clear_perms (int ) ;
 int acl_create_entry (int **,int *) ;
 int acl_get_permset (int ,int *) ;
 int * acl_init (int) ;
 int acl_set_permset (int ,int ) ;
 int acl_set_tag_type (int ,int ) ;

__attribute__((used)) static acl_t
acl_from_stat(const struct stat *sb)
{
 acl_t acl;
 acl_entry_t entry;
 acl_permset_t perms;


 acl = acl_init(3);
 if (!acl)
  return ((void*)0);


 if (acl_create_entry(&acl, &entry) == -1)
  return ((void*)0);
 if (acl_set_tag_type(entry, ACL_USER_OBJ) == -1)
  return ((void*)0);

 if (acl_get_permset(entry, &perms) == -1)
  return ((void*)0);
 if (acl_clear_perms(perms) == -1)
  return ((void*)0);


 if (sb->st_mode & S_IRUSR)
  if (acl_add_perm(perms, ACL_READ) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IWUSR)
  if (acl_add_perm(perms, ACL_WRITE) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IXUSR)
  if (acl_add_perm(perms, ACL_EXECUTE) == -1)
   return ((void*)0);
 if (acl_set_permset(entry, perms) == -1)
  return ((void*)0);


 if (acl_create_entry(&acl, &entry) == -1)
  return ((void*)0);
 if (acl_set_tag_type(entry, ACL_GROUP_OBJ) == -1)
  return ((void*)0);

 if (acl_get_permset(entry, &perms) == -1)
  return ((void*)0);
 if (acl_clear_perms(perms) == -1)
  return ((void*)0);


 if (sb->st_mode & S_IRGRP)
  if (acl_add_perm(perms, ACL_READ) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IWGRP)
  if (acl_add_perm(perms, ACL_WRITE) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IXGRP)
  if (acl_add_perm(perms, ACL_EXECUTE) == -1)
   return ((void*)0);
 if (acl_set_permset(entry, perms) == -1)
  return ((void*)0);


 if (acl_create_entry(&acl, &entry) == -1)
  return ((void*)0);
 if (acl_set_tag_type(entry, ACL_OTHER) == -1)
  return ((void*)0);

 if (acl_get_permset(entry, &perms) == -1)
  return ((void*)0);
 if (acl_clear_perms(perms) == -1)
  return ((void*)0);


 if (sb->st_mode & S_IROTH)
  if (acl_add_perm(perms, ACL_READ) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IWOTH)
  if (acl_add_perm(perms, ACL_WRITE) == -1)
   return ((void*)0);
 if (sb->st_mode & S_IXOTH)
  if (acl_add_perm(perms, ACL_EXECUTE) == -1)
   return ((void*)0);
 if (acl_set_permset(entry, perms) == -1)
  return ((void*)0);

 return(acl);
}
