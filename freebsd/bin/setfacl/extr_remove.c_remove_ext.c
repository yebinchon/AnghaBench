
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * acl_t ;


 int acl_free (int *) ;
 int * acl_strip_np (int *,int) ;
 int err (int,char*,char const*) ;
 int n_flag ;

void
remove_ext(acl_t *prev_acl, const char *filename)
{
 acl_t acl_new;

 acl_new = acl_strip_np(*prev_acl, !n_flag);
 if (acl_new == ((void*)0))
  err(1, "%s: acl_strip_np() failed", filename);

 acl_free(*prev_acl);
 *prev_acl = acl_new;
}
