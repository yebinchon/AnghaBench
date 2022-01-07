
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int SECSID_NULL ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int mls_context_to_sid (int *,char,char**,struct context*,int *,int ) ;
 int policydb ;
 int selinux_mls_enabled ;

int mls_from_string(char *str, struct context *context, gfp_t gfp_mask)
{
 char *tmpstr, *freestr;
 int rc;

 if (!selinux_mls_enabled)
  return -EINVAL;



 tmpstr = freestr = kstrdup(str, gfp_mask);
 if (!tmpstr) {
  rc = -ENOMEM;
 } else {
  rc = mls_context_to_sid(&policydb, ':', &tmpstr, context,
     ((void*)0), SECSID_NULL);
  kfree(freestr);
 }

 return rc;
}
