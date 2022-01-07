
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct re_registers {size_t num_regs; int * start; int * end; } ;
struct TYPE_6__ {int rm_eo; int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
struct TYPE_7__ {int not_bol; int not_eol; int regs_allocated; int no_sub; } ;
typedef TYPE_2__ regex_t ;
typedef int boolean ;


 int REGS_FIXED ;
 scalar_t__ REG_NOERROR ;
 scalar_t__ REG_NOMATCH ;
 int REG_NOTBOL ;
 int REG_NOTEOL ;
 int * TALLOC (size_t,int ) ;
 int free (int *) ;
 int re_search (TYPE_2__*,char const*,int,int ,int,struct re_registers*) ;
 int regoff_t ;
 int strlen (char const*) ;

int
regexec (const regex_t *preg, const char *string, size_t nmatch,
         regmatch_t pmatch[], int eflags)
{
  int ret;
  struct re_registers regs;
  regex_t private_preg;
  int len = strlen (string);
  boolean want_reg_info = !preg->no_sub && nmatch > 0;

  private_preg = *preg;

  private_preg.not_bol = !!(eflags & REG_NOTBOL);
  private_preg.not_eol = !!(eflags & REG_NOTEOL);




  private_preg.regs_allocated = REGS_FIXED;

  if (want_reg_info)
    {
      regs.num_regs = nmatch;
      regs.start = TALLOC (nmatch * 2, regoff_t);
      if (regs.start == ((void*)0))
        return (int) REG_NOMATCH;
      regs.end = regs.start + nmatch;
    }


  ret = re_search (&private_preg, string, len,
                                0, len,
                   want_reg_info ? &regs : (struct re_registers *) 0);


  if (want_reg_info)
    {
      if (ret >= 0)
        {
          unsigned r;

          for (r = 0; r < nmatch; r++)
            {
              pmatch[r].rm_so = regs.start[r];
              pmatch[r].rm_eo = regs.end[r];
            }
        }


      free (regs.start);
    }


  return ret >= 0 ? (int) REG_NOERROR : (int) REG_NOMATCH;
}
