
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct matrox_device {int port_data; int port_index; } ;


 int wmb () ;
 int writeb (int ,int ) ;

__attribute__((used)) static __inline__ void matrox_w1_write_reg(struct matrox_device *dev, u8 reg, u8 val)
{
 writeb(reg, dev->port_index);
 writeb(val, dev->port_data);
 wmb();
}
