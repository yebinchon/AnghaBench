
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int THREAD_SIZE_ORDER ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;

__attribute__((used)) static inline struct thread_info *alloc_thread_info(struct task_struct *tsk)
{



 gfp_t mask = GFP_KERNEL;

 return (struct thread_info *)__get_free_pages(mask, THREAD_SIZE_ORDER);
}
