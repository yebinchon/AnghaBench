
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct user_datum {int value; } ;
struct type_datum {int value; scalar_t__ attribute; } ;
struct sidtab {int dummy; } ;
struct role_datum {int value; } ;
struct TYPE_6__ {int table; } ;
struct TYPE_5__ {int table; } ;
struct TYPE_4__ {int table; } ;
struct policydb {TYPE_3__ p_types; TYPE_2__ p_roles; TYPE_1__ p_users; } ;
struct context {int type; int role; int user; } ;


 int EINVAL ;
 int context_destroy (struct context*) ;
 int context_init (struct context*) ;
 void* hashtab_search (int ,char*) ;
 int mls_context_to_sid (struct policydb*,char,char**,struct context*,struct sidtab*,int) ;
 int policydb_context_isvalid (struct policydb*,struct context*) ;

__attribute__((used)) static int string_to_context_struct(struct policydb *pol,
        struct sidtab *sidtabp,
        char *scontext,
        u32 scontext_len,
        struct context *ctx,
        u32 def_sid)
{
 struct role_datum *role;
 struct type_datum *typdatum;
 struct user_datum *usrdatum;
 char *scontextp, *p, oldc;
 int rc = 0;

 context_init(ctx);



 rc = -EINVAL;
 scontextp = (char *) scontext;


 p = scontextp;
 while (*p && *p != ':')
  p++;

 if (*p == 0)
  goto out;

 *p++ = 0;

 usrdatum = hashtab_search(pol->p_users.table, scontextp);
 if (!usrdatum)
  goto out;

 ctx->user = usrdatum->value;


 scontextp = p;
 while (*p && *p != ':')
  p++;

 if (*p == 0)
  goto out;

 *p++ = 0;

 role = hashtab_search(pol->p_roles.table, scontextp);
 if (!role)
  goto out;
 ctx->role = role->value;


 scontextp = p;
 while (*p && *p != ':')
  p++;
 oldc = *p;
 *p++ = 0;

 typdatum = hashtab_search(pol->p_types.table, scontextp);
 if (!typdatum || typdatum->attribute)
  goto out;

 ctx->type = typdatum->value;

 rc = mls_context_to_sid(pol, oldc, &p, ctx, sidtabp, def_sid);
 if (rc)
  goto out;

 if ((p - scontext) < scontext_len) {
  rc = -EINVAL;
  goto out;
 }


 if (!policydb_context_isvalid(pol, ctx)) {
  rc = -EINVAL;
  goto out;
 }
 rc = 0;
out:
 if (rc)
  context_destroy(ctx);
 return rc;
}
