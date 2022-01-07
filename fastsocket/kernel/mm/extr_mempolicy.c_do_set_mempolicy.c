
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct TYPE_5__ {int nodes; } ;
struct mempolicy {scalar_t__ mode; TYPE_1__ v; } ;
typedef int nodemask_t ;
struct TYPE_6__ {int il_next; struct mempolicy* mempolicy; struct mm_struct* mm; } ;


 long ENOMEM ;
 scalar_t__ IS_ERR (struct mempolicy*) ;
 scalar_t__ MPOL_INTERLEAVE ;
 int NODEMASK_SCRATCH (int ) ;
 int NODEMASK_SCRATCH_FREE (int ) ;
 int PTR_ERR (struct mempolicy*) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int first_node (int ) ;
 struct mempolicy* mpol_new (unsigned short,unsigned short,int *) ;
 int mpol_put (struct mempolicy*) ;
 int mpol_set_nodemask (struct mempolicy*,int *,int ) ;
 int mpol_set_task_struct_flag () ;
 scalar_t__ nodes_weight (int ) ;
 int scratch ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;
 int up_write (int *) ;

__attribute__((used)) static long do_set_mempolicy(unsigned short mode, unsigned short flags,
        nodemask_t *nodes)
{
 struct mempolicy *new, *old;
 struct mm_struct *mm = current->mm;
 NODEMASK_SCRATCH(scratch);
 int ret;

 if (!scratch)
  return -ENOMEM;

 new = mpol_new(mode, flags, nodes);
 if (IS_ERR(new)) {
  ret = PTR_ERR(new);
  goto out;
 }






 if (mm)
  down_write(&mm->mmap_sem);
 task_lock(current);
 ret = mpol_set_nodemask(new, nodes, scratch);
 if (ret) {
  task_unlock(current);
  if (mm)
   up_write(&mm->mmap_sem);
  mpol_put(new);
  goto out;
 }
 old = current->mempolicy;
 current->mempolicy = new;
 mpol_set_task_struct_flag();
 if (new && new->mode == MPOL_INTERLEAVE &&
     nodes_weight(new->v.nodes))
  current->il_next = first_node(new->v.nodes);
 task_unlock(current);
 if (mm)
  up_write(&mm->mmap_sem);

 mpol_put(old);
 ret = 0;
out:
 NODEMASK_SCRATCH_FREE(scratch);
 return ret;
}
