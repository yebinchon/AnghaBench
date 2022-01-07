
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void sch311x_sio_exit(int sio_config_port)
{
 outb(0xaa, sio_config_port);
}
