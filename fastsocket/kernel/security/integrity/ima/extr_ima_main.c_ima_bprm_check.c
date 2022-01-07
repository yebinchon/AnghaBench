
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int filename; int file; } ;


 int BPRM_CHECK ;
 int MAY_EXEC ;
 int ima_enabled ;
 int process_measurement (int ,int ,int ,int ) ;

int ima_bprm_check(struct linux_binprm *bprm)
{
 int rc;

 if (!ima_enabled)
  return 0;

 rc = process_measurement(bprm->file, bprm->filename,
     MAY_EXEC, BPRM_CHECK);
 return 0;
}
