
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_3__ {char* from; } ;
typedef TYPE_1__ substring_t ;
struct ima_measure_rule_entry {int uid; scalar_t__ action; unsigned long fsmagic; int flags; int mask; void* func; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_INTEGRITY_RULE ;
 int AUDIT_OBJ_ROLE ;
 int AUDIT_OBJ_TYPE ;
 int AUDIT_OBJ_USER ;
 int AUDIT_SUBJ_ROLE ;
 int AUDIT_SUBJ_TYPE ;
 int AUDIT_SUBJ_USER ;
 void* BPRM_CHECK ;
 scalar_t__ DONT_MEASURE ;
 int EINVAL ;
 void* FILE_CHECK ;
 void* FILE_MMAP ;
 int GFP_KERNEL ;
 int IMA_FSMAGIC ;
 int IMA_FUNC ;
 int IMA_MASK ;
 int IMA_UID ;
 int LSM_OBJ_ROLE ;
 int LSM_OBJ_TYPE ;
 int LSM_OBJ_USER ;
 int LSM_SUBJ_ROLE ;
 int LSM_SUBJ_TYPE ;
 int LSM_SUBJ_USER ;
 int MAX_OPT_ARGS ;
 int MAY_APPEND ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ MEASURE ;
 scalar_t__ UNKNOWN ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int) ;
 struct audit_buffer* audit_log_start (int *,int ,int ) ;
 int ima_log_string (struct audit_buffer*,char*,char*) ;
 int ima_lsm_rule_init (struct ima_measure_rule_entry*,char*,int ,int ) ;
 int match_token (char*,int ,TYPE_1__*) ;
 int policy_tokens ;
 int strcmp (char*,char*) ;
 int strict_strtoul (char*,int,unsigned long*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int ima_parse_rule(char *rule, struct ima_measure_rule_entry *entry)
{
 struct audit_buffer *ab;
 char *p;
 int result = 0;

 ab = audit_log_start(((void*)0), GFP_KERNEL, AUDIT_INTEGRITY_RULE);

 entry->uid = -1;
 entry->action = UNKNOWN;
 while ((p = strsep(&rule, " \t")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  unsigned long lnum;

  if (result < 0)
   break;
  if ((*p == '\0') || (*p == ' ') || (*p == '\t'))
   continue;
  token = match_token(p, policy_tokens, args);
  switch (token) {
  case 135:
   ima_log_string(ab, "action", "measure");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = MEASURE;
   break;
  case 140:
   ima_log_string(ab, "action", "dont_measure");

   if (entry->action != UNKNOWN)
    result = -EINVAL;

   entry->action = DONT_MEASURE;
   break;
  case 137:
   ima_log_string(ab, "func", args[0].from);

   if (entry->func)
    result = -EINVAL;

   if (strcmp(args[0].from, "FILE_CHECK") == 0)
    entry->func = FILE_CHECK;

   else if (strcmp(args[0].from, "PATH_CHECK") == 0)
    entry->func = FILE_CHECK;
   else if (strcmp(args[0].from, "FILE_MMAP") == 0)
    entry->func = FILE_MMAP;
   else if (strcmp(args[0].from, "BPRM_CHECK") == 0)
    entry->func = BPRM_CHECK;
   else
    result = -EINVAL;
   if (!result)
    entry->flags |= IMA_FUNC;
   break;
  case 136:
   ima_log_string(ab, "mask", args[0].from);

   if (entry->mask)
    result = -EINVAL;

   if ((strcmp(args[0].from, "MAY_EXEC")) == 0)
    entry->mask = MAY_EXEC;
   else if (strcmp(args[0].from, "MAY_WRITE") == 0)
    entry->mask = MAY_WRITE;
   else if (strcmp(args[0].from, "MAY_READ") == 0)
    entry->mask = MAY_READ;
   else if (strcmp(args[0].from, "MAY_APPEND") == 0)
    entry->mask = MAY_APPEND;
   else
    result = -EINVAL;
   if (!result)
    entry->flags |= IMA_MASK;
   break;
  case 138:
   ima_log_string(ab, "fsmagic", args[0].from);

   if (entry->fsmagic) {
    result = -EINVAL;
    break;
   }

   result = strict_strtoul(args[0].from, 16,
      &entry->fsmagic);
   if (!result)
    entry->flags |= IMA_FSMAGIC;
   break;
  case 128:
   ima_log_string(ab, "uid", args[0].from);

   if (entry->uid != -1) {
    result = -EINVAL;
    break;
   }

   result = strict_strtoul(args[0].from, 10, &lnum);
   if (!result) {
    entry->uid = (uid_t) lnum;
    if (entry->uid != lnum)
     result = -EINVAL;
    else
     entry->flags |= IMA_UID;
   }
   break;
  case 132:
   ima_log_string(ab, "obj_user", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_OBJ_USER,
         AUDIT_OBJ_USER);
   break;
  case 134:
   ima_log_string(ab, "obj_role", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_OBJ_ROLE,
         AUDIT_OBJ_ROLE);
   break;
  case 133:
   ima_log_string(ab, "obj_type", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_OBJ_TYPE,
         AUDIT_OBJ_TYPE);
   break;
  case 129:
   ima_log_string(ab, "subj_user", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_SUBJ_USER,
         AUDIT_SUBJ_USER);
   break;
  case 131:
   ima_log_string(ab, "subj_role", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_SUBJ_ROLE,
         AUDIT_SUBJ_ROLE);
   break;
  case 130:
   ima_log_string(ab, "subj_type", args[0].from);
   result = ima_lsm_rule_init(entry, args[0].from,
         LSM_SUBJ_TYPE,
         AUDIT_SUBJ_TYPE);
   break;
  case 139:
   ima_log_string(ab, "UNKNOWN", p);
   result = -EINVAL;
   break;
  }
 }
 if (!result && (entry->action == UNKNOWN))
  result = -EINVAL;

 audit_log_format(ab, "res=%d", !result);
 audit_log_end(ab);
 return result;
}
