
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct context {int dummy; } ;
struct TYPE_4__ {int audit_context; } ;
struct TYPE_3__ {int * p_class_val_to_name; } ;


 int AUDIT_SELINUX_ERR ;
 int EPERM ;
 int GFP_ATOMIC ;
 int audit_log (int ,int ,int ,char*,char*,char*,char*,int ) ;
 scalar_t__ context_struct_to_string (struct context*,char**,int *) ;
 TYPE_2__* current ;
 int kfree (char*) ;
 TYPE_1__ policydb ;
 int selinux_enforcing ;

__attribute__((used)) static int security_validtrans_handle_fail(struct context *ocontext,
        struct context *ncontext,
        struct context *tcontext,
        u16 tclass)
{
 char *o = ((void*)0), *n = ((void*)0), *t = ((void*)0);
 u32 olen, nlen, tlen;

 if (context_struct_to_string(ocontext, &o, &olen) < 0)
  goto out;
 if (context_struct_to_string(ncontext, &n, &nlen) < 0)
  goto out;
 if (context_struct_to_string(tcontext, &t, &tlen) < 0)
  goto out;
 audit_log(current->audit_context, GFP_ATOMIC, AUDIT_SELINUX_ERR,
    "security_validate_transition:  denied for"
    " oldcontext=%s newcontext=%s taskcontext=%s tclass=%s",
    o, n, t, policydb.p_class_val_to_name[tclass-1]);
out:
 kfree(o);
 kfree(n);
 kfree(t);

 if (!selinux_enforcing)
  return 0;
 return -EPERM;
}
