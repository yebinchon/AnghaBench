
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_desc {int flags; unsigned int next; } ;


 int VRING_DESC_F_NEXT ;
 int read_barrier_depends () ;

__attribute__((used)) static unsigned next_desc(struct vring_desc *desc)
{
 unsigned int next;


 if (!(desc->flags & VRING_DESC_F_NEXT))
  return -1U;


 next = desc->next;



 read_barrier_depends();

 return next;
}
