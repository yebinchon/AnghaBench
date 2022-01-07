
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sl811 {int data_reg; int addr_reg; } ;


 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static inline u8 sl811_read(struct sl811 *sl811, int reg)
{
 writeb(reg, sl811->addr_reg);
 return readb(sl811->data_reg);
}
