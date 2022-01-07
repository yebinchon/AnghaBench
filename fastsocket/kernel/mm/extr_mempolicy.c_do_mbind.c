
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
typedef struct vm_area_struct mempolicy ;
typedef int nodemask_t ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int CAP_SYS_NICE ;
 long EINVAL ;
 int EIO ;
 int ENOMEM ;
 long EPERM ;
 scalar_t__ IS_ERR (struct vm_area_struct*) ;
 int LIST_HEAD (int ) ;
 int MIGRATE_SYNC ;
 unsigned short MPOL_DEFAULT ;
 unsigned long MPOL_MF_DISCONTIG_OK ;
 unsigned long MPOL_MF_INVERT ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 unsigned long MPOL_MF_STRICT ;
 int NODEMASK_SCRATCH (scalar_t__) ;
 int NODEMASK_SCRATCH_FREE (scalar_t__) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 long PTR_ERR (struct vm_area_struct*) ;
 int capable (int ) ;
 struct vm_area_struct* check_range (struct mm_struct*,unsigned long,unsigned long,int *,unsigned long,int *) ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int list_empty (int *) ;
 int mbind_range (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct*) ;
 int migrate_pages (int *,int ,unsigned long,int,int ) ;
 int migrate_prep () ;
 struct vm_area_struct* mpol_new (unsigned short,unsigned short,int *) ;
 int mpol_put (struct vm_area_struct*) ;
 int mpol_set_nodemask (struct vm_area_struct*,int *,scalar_t__) ;
 int new_vma_page ;
 int* nodes_addr (int ) ;
 int pagelist ;
 int pr_debug (char*,unsigned long,unsigned long,unsigned short,unsigned short,int) ;
 int putback_lru_pages (int *) ;
 scalar_t__ scratch ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int up_write (int *) ;

__attribute__((used)) static long do_mbind(unsigned long start, unsigned long len,
       unsigned short mode, unsigned short mode_flags,
       nodemask_t *nmask, unsigned long flags)
{
 struct vm_area_struct *vma;
 struct mm_struct *mm = current->mm;
 struct mempolicy *new;
 unsigned long end;
 int err;
 LIST_HEAD(pagelist);

 if (flags & ~(unsigned long)(MPOL_MF_STRICT |
         MPOL_MF_MOVE | MPOL_MF_MOVE_ALL))
  return -EINVAL;
 if ((flags & MPOL_MF_MOVE_ALL) && !capable(CAP_SYS_NICE))
  return -EPERM;

 if (start & ~PAGE_MASK)
  return -EINVAL;

 if (mode == MPOL_DEFAULT)
  flags &= ~MPOL_MF_STRICT;

 len = (len + PAGE_SIZE - 1) & PAGE_MASK;
 end = start + len;

 if (end < start)
  return -EINVAL;
 if (end == start)
  return 0;

 new = mpol_new(mode, mode_flags, nmask);
 if (IS_ERR(new))
  return PTR_ERR(new);





 if (!new)
  flags |= MPOL_MF_DISCONTIG_OK;

 pr_debug("mbind %lx-%lx mode:%d flags:%d nodes:%lx\n",
   start, start + len, mode, mode_flags,
   nmask ? nodes_addr(*nmask)[0] : -1);

 if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {

  err = migrate_prep();
  if (err)
   goto mpol_out;
 }
 {
  NODEMASK_SCRATCH(scratch);
  if (scratch) {
   down_write(&mm->mmap_sem);
   task_lock(current);
   err = mpol_set_nodemask(new, nmask, scratch);
   task_unlock(current);
   if (err)
    up_write(&mm->mmap_sem);
  } else
   err = -ENOMEM;
  NODEMASK_SCRATCH_FREE(scratch);
 }
 if (err)
  goto mpol_out;

 vma = check_range(mm, start, end, nmask,
     flags | MPOL_MF_INVERT, &pagelist);

 err = PTR_ERR(vma);
 if (!IS_ERR(vma)) {
  int nr_failed = 0;

  err = mbind_range(mm, start, end, new);

  if (!list_empty(&pagelist))
   nr_failed = migrate_pages(&pagelist, new_vma_page,
        (unsigned long)vma,
        0, MIGRATE_SYNC);

  if (!err && nr_failed && (flags & MPOL_MF_STRICT))
   err = -EIO;
 } else
  putback_lru_pages(&pagelist);

 up_write(&mm->mmap_sem);
 mpol_out:
 mpol_put(new);
 return err;
}
