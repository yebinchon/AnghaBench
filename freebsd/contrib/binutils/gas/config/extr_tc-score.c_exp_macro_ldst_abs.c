
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct score_it {int dummy; } ;


 scalar_t__ FAIL ;
 int MAX_LITERAL_POOL_SIZE ;
 int REG_TYPE_SCORE ;
 int TRUE ;
 int append_insn (char*,int ) ;
 int do_ldst_insn (char*) ;
 struct score_it inst ;
 int memcpy (struct score_it*,struct score_it*,int) ;
 int nor1 ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
exp_macro_ldst_abs (char *str)
{
  int reg_rd;
  char *backupstr, *tmp;
  char append_str[MAX_LITERAL_POOL_SIZE];
  char verifystr[MAX_LITERAL_POOL_SIZE];
  struct score_it inst_backup;
  int r1_bak = 0;

  r1_bak = nor1;
  nor1 = 0;
  memcpy (&inst_backup, &inst, sizeof (struct score_it));

  strcpy (verifystr, str);
  backupstr = verifystr;
  skip_whitespace (backupstr);
  if ((reg_rd = reg_required_here (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
    return;

  tmp = backupstr;
  if (skip_past_comma (&backupstr) == (int) FAIL)
    return;

  backupstr = tmp;
  sprintf (append_str, "li r1  %s", backupstr);
  append_insn (append_str, TRUE);

  memcpy (&inst, &inst_backup, sizeof (struct score_it));
  sprintf (append_str, " r%d, [r1,0]", reg_rd);
  do_ldst_insn (append_str);

  nor1 = r1_bak;
}
