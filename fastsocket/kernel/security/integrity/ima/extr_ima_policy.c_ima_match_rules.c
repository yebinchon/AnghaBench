
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {TYPE_2__* cred; } ;
struct inode {TYPE_1__* i_sb; } ;
struct ima_measure_rule_entry {int flags; int func; int mask; scalar_t__ fsmagic; scalar_t__ uid; TYPE_3__* lsm; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;
struct TYPE_6__ {int rule; int type; } ;
struct TYPE_5__ {scalar_t__ uid; } ;
struct TYPE_4__ {scalar_t__ s_magic; } ;


 int Audit_equal ;
 int IMA_FSMAGIC ;
 int IMA_FUNC ;
 int IMA_MASK ;
 int IMA_UID ;






 int MAX_LSM_RULES ;
 struct task_struct* current ;
 int security_filter_rule_match (int ,int ,int ,int ,int *) ;
 int security_inode_getsecid (struct inode*,int *) ;
 int security_task_getsecid (struct task_struct*,int *) ;

__attribute__((used)) static bool ima_match_rules(struct ima_measure_rule_entry *rule,
       struct inode *inode, enum ima_hooks func, int mask)
{
 struct task_struct *tsk = current;
 int i;

 if ((rule->flags & IMA_FUNC) && rule->func != func)
  return 0;
 if ((rule->flags & IMA_MASK) && rule->mask != mask)
  return 0;
 if ((rule->flags & IMA_FSMAGIC)
     && rule->fsmagic != inode->i_sb->s_magic)
  return 0;
 if ((rule->flags & IMA_UID) && rule->uid != tsk->cred->uid)
  return 0;
 for (i = 0; i < MAX_LSM_RULES; i++) {
  int rc = 0;
  u32 osid, sid;

  if (!rule->lsm[i].rule)
   continue;

  switch (i) {
  case 131:
  case 133:
  case 132:
   security_inode_getsecid(inode, &osid);
   rc = security_filter_rule_match(osid,
       rule->lsm[i].type,
       Audit_equal,
       rule->lsm[i].rule,
       ((void*)0));
   break;
  case 128:
  case 130:
  case 129:
   security_task_getsecid(tsk, &sid);
   rc = security_filter_rule_match(sid,
       rule->lsm[i].type,
       Audit_equal,
       rule->lsm[i].rule,
       ((void*)0));
  default:
   break;
  }
  if (!rc)
   return 0;
 }
 return 1;
}
