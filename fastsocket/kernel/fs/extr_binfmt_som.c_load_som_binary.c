
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct som_hdr {unsigned int aux_header_size; int aux_header_location; } ;
struct som_exec_auxhdr {unsigned long exec_entry; } ;
struct pt_regs {int dummy; } ;
struct linux_binprm {scalar_t__ p; int file; scalar_t__ buf; } ;
struct TYPE_7__ {scalar_t__ brk; scalar_t__ start_stack; scalar_t__ end_data; scalar_t__ start_code; scalar_t__ end_code; scalar_t__ start_brk; } ;
struct TYPE_5__ {int task_size; int map_base; } ;
struct TYPE_6__ {TYPE_3__* mm; TYPE_1__ thread; int personality; int flags; } ;


 int EIO ;
 int ENOMEM ;
 int EXSTACK_DEFAULT ;
 int GFP_KERNEL ;
 int PER_HPUX ;
 int PF_FORKNOEXEC ;
 unsigned int SOM_PAGESIZE ;
 int STACK_TOP ;
 int check_som_header (struct som_hdr*) ;
 int create_som_tables (struct linux_binprm*) ;
 TYPE_2__* current ;
 int flush_old_exec (struct linux_binprm*) ;
 int install_exec_creds (struct linux_binprm*) ;
 int kernel_read (int ,int ,char*,unsigned int) ;
 int kfree (struct som_exec_auxhdr*) ;
 struct som_exec_auxhdr* kmalloc (unsigned int,int ) ;
 int map_hpux_gateway_page (TYPE_2__*,TYPE_3__*) ;
 int map_som_binary (int ,struct som_exec_auxhdr*) ;
 int printk (char*,unsigned long) ;
 int set_binfmt (int *) ;
 int setup_arg_pages (struct linux_binprm*,int ,int ) ;
 int setup_new_exec (struct linux_binprm*) ;
 int som_format ;
 int start_thread_som (struct pt_regs*,unsigned long,scalar_t__) ;

__attribute__((used)) static int
load_som_binary(struct linux_binprm * bprm, struct pt_regs * regs)
{
 int retval;
 unsigned int size;
 unsigned long som_entry;
 struct som_hdr *som_ex;
 struct som_exec_auxhdr *hpuxhdr;


 som_ex = (struct som_hdr *) bprm->buf;

 retval = check_som_header(som_ex);
 if (retval != 0)
  goto out;



 retval = -ENOMEM;
 size = som_ex->aux_header_size;
 if (size > SOM_PAGESIZE)
  goto out;
 hpuxhdr = kmalloc(size, GFP_KERNEL);
 if (!hpuxhdr)
  goto out;

 retval = kernel_read(bprm->file, som_ex->aux_header_location,
   (char *) hpuxhdr, size);
 if (retval != size) {
  if (retval >= 0)
   retval = -EIO;
  goto out_free;
 }


 retval = flush_old_exec(bprm);
 if (retval)
  goto out_free;


 current->flags &= ~PF_FORKNOEXEC;
 current->personality = PER_HPUX;
 setup_new_exec(bprm);







 current->thread.task_size = 0xc0000000;



 current->thread.map_base = 0x80000000;

 retval = map_som_binary(bprm->file, hpuxhdr);
 if (retval < 0)
  goto out_free;

 som_entry = hpuxhdr->exec_entry;
 kfree(hpuxhdr);

 set_binfmt(&som_format);
 install_exec_creds(bprm);
 setup_arg_pages(bprm, STACK_TOP, EXSTACK_DEFAULT);

 create_som_tables(bprm);

 current->mm->start_stack = bprm->p;
 map_hpux_gateway_page(current,current->mm);

 start_thread_som(regs, som_entry, bprm->p);
 return 0;


out_free:
 kfree(hpuxhdr);
out:
 return retval;
}
