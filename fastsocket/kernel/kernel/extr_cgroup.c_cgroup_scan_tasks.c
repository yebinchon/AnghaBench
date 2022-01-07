
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct task_struct {struct timespec start_time; } ;
struct ptr_heap {int size; struct task_struct** ptrs; int * gt; } ;
struct cgroup_scanner {int (* process_task ) (struct task_struct*,struct cgroup_scanner*) ;int cg; int (* test_task ) (struct task_struct*,struct cgroup_scanner*) ;struct ptr_heap* heap; } ;
struct cgroup_iter {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int cgroup_iter_end (int ,struct cgroup_iter*) ;
 struct task_struct* cgroup_iter_next (int ,struct cgroup_iter*) ;
 int cgroup_iter_start (int ,struct cgroup_iter*) ;
 int get_task_struct (struct task_struct*) ;
 int heap_free (struct ptr_heap*) ;
 int heap_init (struct ptr_heap*,int ,int ,int *) ;
 struct task_struct* heap_insert (struct ptr_heap*,struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int started_after ;
 int started_after_time (struct task_struct*,struct timespec*,struct task_struct*) ;
 int stub1 (struct task_struct*,struct cgroup_scanner*) ;
 int stub2 (struct task_struct*,struct cgroup_scanner*) ;

int cgroup_scan_tasks(struct cgroup_scanner *scan)
{
 int retval, i;
 struct cgroup_iter it;
 struct task_struct *p, *dropped;

 struct task_struct *latest_task = ((void*)0);
 struct ptr_heap tmp_heap;
 struct ptr_heap *heap;
 struct timespec latest_time = { 0, 0 };

 if (scan->heap) {

  heap = scan->heap;
  heap->gt = &started_after;
 } else {

  heap = &tmp_heap;
  retval = heap_init(heap, PAGE_SIZE, GFP_KERNEL, &started_after);
  if (retval)

   return retval;
 }

 again:
 heap->size = 0;
 cgroup_iter_start(scan->cg, &it);
 while ((p = cgroup_iter_next(scan->cg, &it))) {




  if (scan->test_task && !scan->test_task(p, scan))
   continue;




  if (!started_after_time(p, &latest_time, latest_task))
   continue;
  dropped = heap_insert(heap, p);
  if (dropped == ((void*)0)) {




   get_task_struct(p);
  } else if (dropped != p) {




   get_task_struct(p);
   put_task_struct(dropped);
  }




 }
 cgroup_iter_end(scan->cg, &it);

 if (heap->size) {
  for (i = 0; i < heap->size; i++) {
   struct task_struct *q = heap->ptrs[i];
   if (i == 0) {
    latest_time = q->start_time;
    latest_task = q;
   }

   scan->process_task(q, scan);
   put_task_struct(q);
  }







  goto again;
 }
 if (heap == &tmp_heap)
  heap_free(&tmp_heap);
 return 0;
}
