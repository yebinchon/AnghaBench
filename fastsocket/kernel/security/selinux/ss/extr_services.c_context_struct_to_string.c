
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct context {int user; int role; int type; int str; scalar_t__ len; } ;
struct TYPE_2__ {char** p_user_val_to_name; char** p_role_val_to_name; char** p_type_val_to_name; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 char* kmalloc (scalar_t__,int ) ;
 char* kstrdup (int ,int ) ;
 scalar_t__ mls_compute_context_len (struct context*) ;
 int mls_sid_to_context (struct context*,char**) ;
 TYPE_1__ policydb ;
 int sprintf (char*,char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int context_struct_to_string(struct context *context, char **scontext, u32 *scontext_len)
{
 char *scontextp;

 *scontext = ((void*)0);
 *scontext_len = 0;

 if (context->len) {
  *scontext_len = context->len;
  *scontext = kstrdup(context->str, GFP_ATOMIC);
  if (!(*scontext))
   return -ENOMEM;
  return 0;
 }


 *scontext_len += strlen(policydb.p_user_val_to_name[context->user - 1]) + 1;
 *scontext_len += strlen(policydb.p_role_val_to_name[context->role - 1]) + 1;
 *scontext_len += strlen(policydb.p_type_val_to_name[context->type - 1]) + 1;
 *scontext_len += mls_compute_context_len(context);


 scontextp = kmalloc(*scontext_len, GFP_ATOMIC);
 if (!scontextp)
  return -ENOMEM;
 *scontext = scontextp;




 sprintf(scontextp, "%s:%s:%s",
  policydb.p_user_val_to_name[context->user - 1],
  policydb.p_role_val_to_name[context->role - 1],
  policydb.p_type_val_to_name[context->type - 1]);
 scontextp += strlen(policydb.p_user_val_to_name[context->user - 1]) +
       1 + strlen(policydb.p_role_val_to_name[context->role - 1]) +
       1 + strlen(policydb.p_type_val_to_name[context->type - 1]);

 mls_sid_to_context(context, &scontextp);

 *scontextp = 0;

 return 0;
}
