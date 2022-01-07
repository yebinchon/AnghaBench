
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _irqfd {int list; } ;


 scalar_t__ list_empty (int *) ;

__attribute__((used)) static bool
irqfd_is_active(struct _irqfd *irqfd)
{
 return list_empty(&irqfd->list) ? 0 : 1;
}
