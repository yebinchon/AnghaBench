
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct som_exec_auxhdr {int exec_bsize; int exec_dfile; int exec_dsize; int exec_dmem; int exec_tfile; int exec_tsize; int exec_tmem; } ;
struct file {int dummy; } ;
typedef int mm_segment_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long start_code; unsigned long end_code; unsigned long start_data; unsigned long end_data; unsigned long start_brk; unsigned long brk; int mmap_sem; } ;


 int MAP_DENYWRITE ;
 int MAP_EXECUTABLE ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned long SOM_PAGEALIGN (int ) ;
 unsigned long SOM_PAGESTART (int ) ;
 TYPE_2__* current ;
 int do_mmap (struct file*,unsigned long,unsigned long,int,int,unsigned long) ;
 int down_write (int *) ;
 int get_ds () ;
 int get_fs () ;
 int set_fs (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int map_som_binary(struct file *file,
  const struct som_exec_auxhdr *hpuxhdr)
{
 unsigned long code_start, code_size, data_start, data_size;
 unsigned long bss_start, som_brk;
 int retval;
 int prot = PROT_READ | PROT_EXEC;
 int flags = MAP_FIXED|MAP_PRIVATE|MAP_DENYWRITE|MAP_EXECUTABLE;

 mm_segment_t old_fs = get_fs();
 set_fs(get_ds());

 code_start = SOM_PAGESTART(hpuxhdr->exec_tmem);
 code_size = SOM_PAGEALIGN(hpuxhdr->exec_tsize);
 current->mm->start_code = code_start;
 current->mm->end_code = code_start + code_size;
 down_write(&current->mm->mmap_sem);
 retval = do_mmap(file, code_start, code_size, prot,
   flags, SOM_PAGESTART(hpuxhdr->exec_tfile));
 up_write(&current->mm->mmap_sem);
 if (retval < 0 && retval > -1024)
  goto out;

 data_start = SOM_PAGESTART(hpuxhdr->exec_dmem);
 data_size = SOM_PAGEALIGN(hpuxhdr->exec_dsize);
 current->mm->start_data = data_start;
 current->mm->end_data = bss_start = data_start + data_size;
 down_write(&current->mm->mmap_sem);
 retval = do_mmap(file, data_start, data_size,
   prot | PROT_WRITE, flags,
   SOM_PAGESTART(hpuxhdr->exec_dfile));
 up_write(&current->mm->mmap_sem);
 if (retval < 0 && retval > -1024)
  goto out;

 som_brk = bss_start + SOM_PAGEALIGN(hpuxhdr->exec_bsize);
 current->mm->start_brk = current->mm->brk = som_brk;
 down_write(&current->mm->mmap_sem);
 retval = do_mmap(((void*)0), bss_start, som_brk - bss_start,
   prot | PROT_WRITE, MAP_FIXED | MAP_PRIVATE, 0);
 up_write(&current->mm->mmap_sem);
 if (retval > 0 || retval < -1024)
  retval = 0;
out:
 set_fs(old_fs);
 return retval;
}
