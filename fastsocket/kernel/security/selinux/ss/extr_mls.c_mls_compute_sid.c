
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct range_trans {int target_class; int target_type; int source_type; } ;
struct mls_range {int dummy; } ;
struct context {int type; } ;
struct TYPE_2__ {int process_class; int range_tr; } ;





 int EINVAL ;
 struct mls_range* hashtab_search (int ,struct range_trans*) ;
 int mls_context_cpy (struct context*,struct context*) ;
 int mls_context_cpy_low (struct context*,struct context*) ;
 int mls_range_set (struct context*,struct mls_range*) ;
 TYPE_1__ policydb ;
 int selinux_mls_enabled ;

int mls_compute_sid(struct context *scontext,
      struct context *tcontext,
      u16 tclass,
      u32 specified,
      struct context *newcontext)
{
 struct range_trans rtr;
 struct mls_range *r;

 if (!selinux_mls_enabled)
  return 0;

 switch (specified) {
 case 128:

  rtr.source_type = scontext->type;
  rtr.target_type = tcontext->type;
  rtr.target_class = tclass;
  r = hashtab_search(policydb.range_tr, &rtr);
  if (r)
   return mls_range_set(newcontext, r);

 case 130:
  if (tclass == policydb.process_class)

   return mls_context_cpy(newcontext, scontext);
  else

   return mls_context_cpy_low(newcontext, scontext);
 case 129:

  return mls_context_cpy_low(newcontext, scontext);


 }
 return -EINVAL;
}
