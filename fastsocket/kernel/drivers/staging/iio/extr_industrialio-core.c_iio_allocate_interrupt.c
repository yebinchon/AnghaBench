
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_interrupt {int ev_list; int ev_list_lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct iio_interrupt* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iio_interrupt *iio_allocate_interrupt(void)
{
 struct iio_interrupt *i = kmalloc(sizeof *i, GFP_KERNEL);
 if (i) {
  spin_lock_init(&i->ev_list_lock);
  INIT_LIST_HEAD(&i->ev_list);
 }
 return i;
}
