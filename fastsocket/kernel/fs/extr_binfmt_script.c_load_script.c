
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct linux_binprm {char* buf; char* interp; struct file* file; int argc; } ;
struct file {int dummy; } ;


 int BINPRM_BUF_SIZE ;
 int ENOEXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int allow_write_access (struct file*) ;
 int bprm_change_interp (char*,struct linux_binprm*) ;
 int copy_strings_kernel (int,char**,struct linux_binprm*) ;
 int fput (struct file*) ;
 struct file* open_exec (char*) ;
 int prepare_binprm (struct linux_binprm*) ;
 int remove_arg_zero (struct linux_binprm*) ;
 int search_binary_handler (struct linux_binprm*,struct pt_regs*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int load_script(struct linux_binprm *bprm,struct pt_regs *regs)
{
 char *cp, *i_name, *i_arg;
 struct file *file;
 char interp[BINPRM_BUF_SIZE];
 int retval;

 if ((bprm->buf[0] != '#') || (bprm->buf[1] != '!'))
  return -ENOEXEC;





 allow_write_access(bprm->file);
 fput(bprm->file);
 bprm->file = ((void*)0);

 bprm->buf[BINPRM_BUF_SIZE - 1] = '\0';
 if ((cp = strchr(bprm->buf, '\n')) == ((void*)0))
  cp = bprm->buf+BINPRM_BUF_SIZE-1;
 *cp = '\0';
 while (cp > bprm->buf) {
  cp--;
  if ((*cp == ' ') || (*cp == '\t'))
   *cp = '\0';
  else
   break;
 }
 for (cp = bprm->buf+2; (*cp == ' ') || (*cp == '\t'); cp++);
 if (*cp == '\0')
  return -ENOEXEC;
 i_name = cp;
 i_arg = ((void*)0);
 for ( ; *cp && (*cp != ' ') && (*cp != '\t'); cp++)
                ;
 while ((*cp == ' ') || (*cp == '\t'))
  *cp++ = '\0';
 if (*cp)
  i_arg = cp;
 strcpy (interp, i_name);
 retval = remove_arg_zero(bprm);
 if (retval)
  return retval;
 retval = copy_strings_kernel(1, &bprm->interp, bprm);
 if (retval < 0) return retval;
 bprm->argc++;
 if (i_arg) {
  retval = copy_strings_kernel(1, &i_arg, bprm);
  if (retval < 0) return retval;
  bprm->argc++;
 }
 retval = copy_strings_kernel(1, &i_name, bprm);
 if (retval) return retval;
 bprm->argc++;
 retval = bprm_change_interp(interp, bprm);
 if (retval < 0)
  return retval;




 file = open_exec(interp);
 if (IS_ERR(file))
  return PTR_ERR(file);

 bprm->file = file;
 retval = prepare_binprm(bprm);
 if (retval < 0)
  return retval;
 return search_binary_handler(bprm,regs);
}
