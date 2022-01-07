
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**,char const*) ;int cmd; } ;


 int RUN_SETUP ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int USE_PAGER ;
 int check_browser_config (int ) ;
 int check_pager_config (int ) ;
 int commit_pager_choice () ;
 int die (char*,...) ;
 int errno ;
 int exit_browser (int) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int fileno (int ) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int stdout ;
 int strerror (int ) ;
 int stub1 (int,char const**,char const*) ;
 int use_browser ;
 int use_pager ;

__attribute__((used)) static int run_builtin(struct cmd_struct *p, int argc, const char **argv)
{
 int status;
 struct stat st;
 const char *prefix;

 prefix = ((void*)0);
 if (p->option & RUN_SETUP)
  prefix = ((void*)0);

 if (use_browser == -1)
  use_browser = check_browser_config(p->cmd);

 if (use_pager == -1 && p->option & RUN_SETUP)
  use_pager = check_pager_config(p->cmd);
 if (use_pager == -1 && p->option & USE_PAGER)
  use_pager = 1;
 commit_pager_choice();

 status = p->fn(argc, argv, prefix);
 exit_browser(status);

 if (status)
  return status & 0xff;


 if (fstat(fileno(stdout), &st))
  return 0;

 if (S_ISFIFO(st.st_mode) || S_ISSOCK(st.st_mode))
  return 0;


 if (fflush(stdout))
  die("write failure on standard output: %s", strerror(errno));
 if (ferror(stdout))
  die("unknown write failure on standard output");
 if (fclose(stdout))
  die("close failed on standard output: %s", strerror(errno));
 return 0;
}
