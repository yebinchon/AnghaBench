
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int bwarn; int * error; } ;


 int * BAD_ARGS ;
 int ERR_FOR_SCORE5U_MUL_DIV ;
 scalar_t__ FAIL ;
 int MAX_LITERAL_POOL_SIZE ;
 int REG_TYPE_SCORE ;
 int SET_INSN_ERROR (int *) ;
 int TRUE ;
 int append_insn (char*,int ) ;
 int as_warn (char*,int ) ;
 int do_rsrs (char*) ;
 int end_of_line (char*) ;
 TYPE_1__ inst ;
 int reg_required_here (char**,int,int ) ;
 int skip_past_comma (char**) ;
 int skip_whitespace (char*) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int university_version ;

__attribute__((used)) static void
do_macro_mul_rdrsrs (char *str)
{
  int reg_rd;
  int reg_rs1;
  int reg_rs2;
  char *backupstr;
  char append_str[MAX_LITERAL_POOL_SIZE];

  if (university_version == 1)
    as_warn ("%s", ERR_FOR_SCORE5U_MUL_DIV);

  strcpy (append_str, str);
  backupstr = append_str;
  skip_whitespace (backupstr);
  if (((reg_rd = reg_required_here (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
      || (skip_past_comma (&backupstr) == (int) FAIL)
      || ((reg_rs1 = reg_required_here (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL))
    {
      inst.error = BAD_ARGS;
      return;
    }

  if (skip_past_comma (&backupstr) == (int) FAIL)
    {

      if (strcmp (inst.name, "rem") == 0 || strcmp (inst.name, "remu") == 0)
        {
          SET_INSN_ERROR (BAD_ARGS);
        }
      else
        {
          SET_INSN_ERROR (((void*)0));
          do_rsrs (str);
        }
      return;
    }
  else
    {
      SET_INSN_ERROR (((void*)0));
      if (((reg_rs2 = reg_required_here (&backupstr, -1, REG_TYPE_SCORE)) == (int) FAIL)
          || (end_of_line (backupstr) == (int) FAIL))
        {
          return;
        }
      else
        {
          char append_str1[MAX_LITERAL_POOL_SIZE];

          if (strcmp (inst.name, "rem") == 0)
            {
              sprintf (append_str, "mul r%d, r%d", reg_rs1, reg_rs2);
              sprintf (append_str1, "mfceh  r%d", reg_rd);
            }
          else if (strcmp (inst.name, "remu") == 0)
            {
              sprintf (append_str, "mulu r%d, r%d", reg_rs1, reg_rs2);
              sprintf (append_str1, "mfceh  r%d", reg_rd);
            }
          else
            {
              sprintf (append_str, "%s r%d, r%d", inst.name, reg_rs1, reg_rs2);
              sprintf (append_str1, "mfcel  r%d", reg_rd);
            }


          if (append_insn (append_str, TRUE) == (int) FAIL)
     return;


          if (append_insn (append_str1, TRUE) == (int) FAIL)
     return;


          inst.bwarn = -1;
        }
    }
}
