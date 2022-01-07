
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_portio {int dummy; } ;
struct kobject {int dummy; } ;


 int kfree (struct uio_portio*) ;
 struct uio_portio* to_portio (struct kobject*) ;

__attribute__((used)) static void portio_release(struct kobject *kobj)
{
 struct uio_portio *portio = to_portio(kobj);
 kfree(portio);
}
