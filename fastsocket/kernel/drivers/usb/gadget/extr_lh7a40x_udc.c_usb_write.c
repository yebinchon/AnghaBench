
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ io_p2v (int ) ;

__attribute__((used)) static __inline__ void usb_write(u32 val, u32 port)
{
 *(volatile u32 *)io_p2v(port) = val;
}
