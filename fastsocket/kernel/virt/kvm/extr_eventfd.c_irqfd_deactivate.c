
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _irqfd {int shutdown; int list; } ;


 int BUG_ON (int) ;
 int irqfd_cleanup_wq ;
 int irqfd_is_active (struct _irqfd*) ;
 int list_del_init (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
irqfd_deactivate(struct _irqfd *irqfd)
{
 BUG_ON(!irqfd_is_active(irqfd));

 list_del_init(&irqfd->list);

 queue_work(irqfd_cleanup_wq, &irqfd->shutdown);
}
