
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
typedef int gfp_t ;


 int ALLOC_CPUSET ;
 int ALLOC_HARDER ;
 int ALLOC_HIGH ;
 int ALLOC_NO_WATERMARKS ;
 int ALLOC_WMARK_MIN ;
 int BUILD_BUG_ON (int) ;
 int PF_MEMALLOC ;
 int TIF_MEMDIE ;
 int __GFP_HIGH ;
 int __GFP_NOMEMALLOC ;
 int __GFP_WAIT ;
 struct task_struct* current ;
 int in_interrupt () ;
 scalar_t__ likely (int) ;
 int rt_task (struct task_struct*) ;
 int test_thread_flag (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int
gfp_to_alloc_flags(gfp_t gfp_mask)
{
 struct task_struct *p = current;
 int alloc_flags = ALLOC_WMARK_MIN | ALLOC_CPUSET;
 const gfp_t wait = gfp_mask & __GFP_WAIT;


 BUILD_BUG_ON(__GFP_HIGH != ALLOC_HIGH);







 alloc_flags |= (gfp_mask & __GFP_HIGH);

 if (!wait) {




  if (!(gfp_mask & __GFP_NOMEMALLOC))
   alloc_flags |= ALLOC_HARDER;




  alloc_flags &= ~ALLOC_CPUSET;
 } else if (unlikely(rt_task(p)) && !in_interrupt())
  alloc_flags |= ALLOC_HARDER;

 if (likely(!(gfp_mask & __GFP_NOMEMALLOC))) {
  if (!in_interrupt() &&
      ((p->flags & PF_MEMALLOC) ||
       unlikely(test_thread_flag(TIF_MEMDIE))))
   alloc_flags |= ALLOC_NO_WATERMARKS;
 }

 return alloc_flags;
}
