
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int data; } ;
typedef void cpu_workqueue_struct ;


 int WORK_STRUCT_WQ_DATA_MASK ;
 int atomic_long_read (int *) ;

__attribute__((used)) static inline
struct cpu_workqueue_struct *get_wq_data(struct work_struct *work)
{
 return (void *) (atomic_long_read(&work->data) & WORK_STRUCT_WQ_DATA_MASK);
}
