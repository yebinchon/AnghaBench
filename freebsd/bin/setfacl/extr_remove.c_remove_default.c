
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;


 int ACL_MAX_ENTRIES ;
 int acl_free (int *) ;
 int * acl_init (int ) ;
 int err (int,char*,char const*) ;

int
remove_default(acl_t *prev_acl, const char *filename)
{

 acl_free(*prev_acl);
 *prev_acl = acl_init(ACL_MAX_ENTRIES);
 if (*prev_acl == ((void*)0))
  err(1, "%s: acl_init() failed", filename);

 return (0);
}
