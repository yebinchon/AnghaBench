
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int qid_t ;


 scalar_t__ XQM_COMMAND (int) ;
 int generic_quotactl_valid (struct super_block*,int,int,int ) ;
 int security_quotactl (int,int,int ,struct super_block*) ;
 int xqm_quotactl_valid (struct super_block*,int,int,int ) ;

__attribute__((used)) static int check_quotactl_valid(struct super_block *sb, int type, int cmd,
    qid_t id)
{
 int error;

 if (XQM_COMMAND(cmd))
  error = xqm_quotactl_valid(sb, type, cmd, id);
 else
  error = generic_quotactl_valid(sb, type, cmd, id);
 if (!error)
  error = security_quotactl(cmd, type, id, sb);
 return error;
}
