
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sl811 {int data_reg; int addr_reg; } ;


 int writeb (int,int ) ;

__attribute__((used)) static inline void sl811_write(struct sl811 *sl811, int reg, u8 val)
{
 writeb(reg, sl811->addr_reg);
 writeb(val, sl811->data_reg);
}
