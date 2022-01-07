
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigqueue {int flags; } ;


 int GFP_KERNEL ;
 int SIGQUEUE_PREALLOC ;
 struct sigqueue* __sigqueue_alloc (int ,int ,int ) ;
 int current ;

struct sigqueue *sigqueue_alloc(void)
{
 struct sigqueue *q;

 if ((q = __sigqueue_alloc(current, GFP_KERNEL, 0)))
  q->flags |= SIGQUEUE_PREALLOC;
 return(q);
}
