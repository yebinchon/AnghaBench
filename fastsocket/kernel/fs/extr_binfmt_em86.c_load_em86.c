
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct linux_binprm {char* filename; struct file* file; int argc; scalar_t__ buf; } ;
struct file {TYPE_1__* f_op; } ;
struct elfhdr {scalar_t__ e_type; scalar_t__ e_machine; int e_ident; } ;
struct TYPE_2__ {int mmap; } ;


 int ELFMAG ;
 char* EM86_INTERP ;
 char* EM86_I_NAME ;
 scalar_t__ EM_386 ;
 scalar_t__ EM_486 ;
 int ENOEXEC ;
 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int SELFMAG ;
 int allow_write_access (struct file*) ;
 int copy_strings_kernel (int,char**,struct linux_binprm*) ;
 int fput (struct file*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 struct file* open_exec (char*) ;
 int prepare_binprm (struct linux_binprm*) ;
 int remove_arg_zero (struct linux_binprm*) ;
 int search_binary_handler (struct linux_binprm*,struct pt_regs*) ;

__attribute__((used)) static int load_em86(struct linux_binprm *bprm,struct pt_regs *regs)
{
 char *interp, *i_name, *i_arg;
 struct file * file;
 int retval;
 struct elfhdr elf_ex;


 elf_ex = *((struct elfhdr *)bprm->buf);

 if (memcmp(elf_ex.e_ident, ELFMAG, SELFMAG) != 0)
  return -ENOEXEC;


 if ((elf_ex.e_type != ET_EXEC && elf_ex.e_type != ET_DYN) ||
  (!((elf_ex.e_machine == EM_386) || (elf_ex.e_machine == EM_486))) ||
  (!bprm->file->f_op || !bprm->file->f_op->mmap)) {
   return -ENOEXEC;
 }

 allow_write_access(bprm->file);
 fput(bprm->file);
 bprm->file = ((void*)0);




 interp = EM86_INTERP;
 i_name = EM86_I_NAME;
 i_arg = ((void*)0);
 remove_arg_zero(bprm);
 retval = copy_strings_kernel(1, &bprm->filename, bprm);
 if (retval < 0) return retval;
 bprm->argc++;
 if (i_arg) {
  retval = copy_strings_kernel(1, &i_arg, bprm);
  if (retval < 0) return retval;
  bprm->argc++;
 }
 retval = copy_strings_kernel(1, &i_name, bprm);
 if (retval < 0) return retval;
 bprm->argc++;






 file = open_exec(interp);
 if (IS_ERR(file))
  return PTR_ERR(file);

 bprm->file = file;

 retval = prepare_binprm(bprm);
 if (retval < 0)
  return retval;

 return search_binary_handler(bprm, regs);
}
