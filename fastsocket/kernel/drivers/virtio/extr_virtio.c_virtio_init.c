
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bus_register (int *) ;
 int panic (char*) ;
 int virtio_bus ;

__attribute__((used)) static int virtio_init(void)
{
 if (bus_register(&virtio_bus) != 0)
  panic("virtio bus registration failed");
 return 0;
}
