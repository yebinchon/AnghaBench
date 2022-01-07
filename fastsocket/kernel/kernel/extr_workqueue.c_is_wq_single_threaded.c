
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int singlethread; } ;



__attribute__((used)) static inline int is_wq_single_threaded(struct workqueue_struct *wq)
{
 return wq->singlethread;
}
