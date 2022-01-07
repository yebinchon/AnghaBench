
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct context {int dummy; } ;
struct TYPE_5__ {int table; } ;
struct common_datum {TYPE_1__ permissions; } ;
struct TYPE_6__ {int table; } ;
struct class_datum {TYPE_2__ permissions; struct common_datum* comdatum; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_8__ {int audit_context; } ;
struct TYPE_7__ {char** p_class_val_to_name; struct class_datum** class_val_to_struct; } ;


 int AUDIT_SELINUX_ERR ;
 int GFP_ATOMIC ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,char const*,char*,...) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 scalar_t__ context_struct_to_string (struct context*,char**,int*) ;
 TYPE_4__* current ;
 int dump_masked_av_helper ;
 scalar_t__ hashtab_map (int ,int ,char**) ;
 int kfree (char*) ;
 TYPE_3__ policydb ;

__attribute__((used)) static void security_dump_masked_av(struct context *scontext,
        struct context *tcontext,
        u16 tclass,
        u32 permissions,
        const char *reason)
{
 struct common_datum *common_dat;
 struct class_datum *tclass_dat;
 struct audit_buffer *ab;
 char *tclass_name;
 char *scontext_name = ((void*)0);
 char *tcontext_name = ((void*)0);
 char *permission_names[32];
 int index, length;
 bool need_comma = 0;

 if (!permissions)
  return;

 tclass_name = policydb.p_class_val_to_name[tclass - 1];
 tclass_dat = policydb.class_val_to_struct[tclass - 1];
 common_dat = tclass_dat->comdatum;


 if (common_dat &&
     hashtab_map(common_dat->permissions.table,
   dump_masked_av_helper, permission_names) < 0)
  goto out;

 if (hashtab_map(tclass_dat->permissions.table,
   dump_masked_av_helper, permission_names) < 0)
  goto out;


 if (context_struct_to_string(scontext,
         &scontext_name, &length) < 0)
  goto out;

 if (context_struct_to_string(tcontext,
         &tcontext_name, &length) < 0)
  goto out;


 ab = audit_log_start(current->audit_context,
        GFP_ATOMIC, AUDIT_SELINUX_ERR);
 if (!ab)
  goto out;

 audit_log_format(ab, "op=security_compute_av reason=%s "
    "scontext=%s tcontext=%s tclass=%s perms=",
    reason, scontext_name, tcontext_name, tclass_name);

 for (index = 0; index < 32; index++) {
  u32 mask = (1 << index);

  if ((mask & permissions) == 0)
   continue;

  audit_log_format(ab, "%s%s",
     need_comma ? "," : "",
     permission_names[index]
     ? permission_names[index] : "????");
  need_comma = 1;
 }
 audit_log_end(ab);
out:

 kfree(tcontext_name);
 kfree(scontext_name);

 return;
}
