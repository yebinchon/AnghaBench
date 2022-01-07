
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct linux_binprm {int interp_data; char* interp; int interp_flags; int buf; struct file* file; int argc; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int flags; int interpreter; } ;
typedef TYPE_1__ Node ;


 int BINPRM_BUF_SIZE ;
 int BINPRM_FLAGS_ENFORCE_NONDUMP ;
 int BINPRM_FLAGS_EXECFD ;
 int ENOEXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int MAY_READ ;
 int MISC_FMT_CREDENTIALS ;
 int MISC_FMT_OPEN_BINARY ;
 int MISC_FMT_PRESERVE_ARGV0 ;
 int PTR_ERR (struct file*) ;
 int allow_write_access (struct file*) ;
 int bprm_change_interp (char*,struct linux_binprm*) ;
 TYPE_1__* check_file (struct linux_binprm*) ;
 int copy_strings_kernel (int,char**,struct linux_binprm*) ;
 int enabled ;
 int entries_lock ;
 int fd_install (int,struct file*) ;
 scalar_t__ file_permission (struct file*,int ) ;
 int fput (struct file*) ;
 int get_unused_fd () ;
 int kernel_read (struct file*,int ,int ,int) ;
 int memset (int ,int ,int) ;
 struct file* open_exec (char*) ;
 int prepare_binprm (struct linux_binprm*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int remove_arg_zero (struct linux_binprm*) ;
 int search_binary_handler (struct linux_binprm*,struct pt_regs*) ;
 int strlcpy (char*,int ,int) ;
 int sys_close (int) ;

__attribute__((used)) static int load_misc_binary(struct linux_binprm *bprm, struct pt_regs *regs)
{
 Node *fmt;
 struct file * interp_file = ((void*)0);
 char iname[BINPRM_BUF_SIZE];
 char *iname_addr = iname;
 int retval;
 int fd_binary = -1;

 retval = -ENOEXEC;
 if (!enabled)
  goto _ret;


 read_lock(&entries_lock);
 fmt = check_file(bprm);
 if (fmt)
  strlcpy(iname, fmt->interpreter, BINPRM_BUF_SIZE);
 read_unlock(&entries_lock);
 if (!fmt)
  goto _ret;

 if (!(fmt->flags & MISC_FMT_PRESERVE_ARGV0)) {
  retval = remove_arg_zero(bprm);
  if (retval)
   goto _ret;
 }

 if (fmt->flags & MISC_FMT_OPEN_BINARY) {




   fd_binary = get_unused_fd();
   if (fd_binary < 0) {
    retval = fd_binary;
    goto _ret;
   }
   fd_install(fd_binary, bprm->file);



  if (file_permission(bprm->file, MAY_READ))
   bprm->interp_flags |= BINPRM_FLAGS_ENFORCE_NONDUMP;

  allow_write_access(bprm->file);
  bprm->file = ((void*)0);


  bprm->interp_flags |= BINPRM_FLAGS_EXECFD;
  bprm->interp_data = fd_binary;

  } else {
   allow_write_access(bprm->file);
   fput(bprm->file);
   bprm->file = ((void*)0);
  }

 retval = copy_strings_kernel (1, &bprm->interp, bprm);
 if (retval < 0)
  goto _error;
 bprm->argc++;


 retval = copy_strings_kernel (1, &iname_addr, bprm);
 if (retval < 0)
  goto _error;
 bprm->argc ++;


 retval = bprm_change_interp(iname, bprm);
 if (retval < 0)
  goto _error;

 interp_file = open_exec (iname);
 retval = PTR_ERR (interp_file);
 if (IS_ERR (interp_file))
  goto _error;

 bprm->file = interp_file;
 if (fmt->flags & MISC_FMT_CREDENTIALS) {




  memset(bprm->buf, 0, BINPRM_BUF_SIZE);
  retval = kernel_read(bprm->file, 0, bprm->buf, BINPRM_BUF_SIZE);
 } else
  retval = prepare_binprm (bprm);

 if (retval < 0)
  goto _error;

 retval = search_binary_handler (bprm, regs);
 if (retval < 0)
  goto _error;

_ret:
 return retval;
_error:
 if (fd_binary > 0)
  sys_close(fd_binary);
 bprm->interp_flags = 0;
 bprm->interp_data = 0;
 goto _ret;
}
