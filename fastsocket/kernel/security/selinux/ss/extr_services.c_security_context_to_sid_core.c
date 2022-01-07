
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct context {char* str; int len; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int SECINITSID_KERNEL ;
 int SECINITSID_NUM ;
 int SECSID_NULL ;
 int context_destroy (struct context*) ;
 int * initial_sid_to_string ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 char* kstrdup (char*,int ) ;
 int memcpy (char*,char const*,int) ;
 int policy_rwlock ;
 int policydb ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab ;
 int sidtab_context_to_sid (int *,struct context*,int*) ;
 int ss_initialized ;
 int strcmp (int ,char const*) ;
 int string_to_context_struct (int *,int *,char*,int,struct context*,int) ;

__attribute__((used)) static int security_context_to_sid_core(const char *scontext, u32 scontext_len,
     u32 *sid, u32 def_sid, gfp_t gfp_flags,
     int force)
{
 char *scontext2, *str = ((void*)0);
 struct context context;
 int rc = 0;

 if (!ss_initialized) {
  int i;

  for (i = 1; i < SECINITSID_NUM; i++) {
   if (!strcmp(initial_sid_to_string[i], scontext)) {
    *sid = i;
    return 0;
   }
  }
  *sid = SECINITSID_KERNEL;
  return 0;
 }
 *sid = SECSID_NULL;


 scontext2 = kmalloc(scontext_len+1, gfp_flags);
 if (!scontext2)
  return -ENOMEM;
 memcpy(scontext2, scontext, scontext_len);
 scontext2[scontext_len] = 0;

 if (force) {

  str = kstrdup(scontext2, gfp_flags);
  if (!str) {
   kfree(scontext2);
   return -ENOMEM;
  }
 }

 read_lock(&policy_rwlock);
 rc = string_to_context_struct(&policydb, &sidtab,
          scontext2, scontext_len,
          &context, def_sid);
 if (rc == -EINVAL && force) {
  context.str = str;
  context.len = scontext_len;
  str = ((void*)0);
 } else if (rc)
  goto out;
 rc = sidtab_context_to_sid(&sidtab, &context, sid);
 context_destroy(&context);
out:
 read_unlock(&policy_rwlock);
 kfree(scontext2);
 kfree(str);
 return rc;
}
