
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct pm3_par {int dummy; } ;


 int PM3RD_IndexHigh ;
 int PM3RD_IndexLow ;
 int PM3RD_IndexedData ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,unsigned int) ;
 int wmb () ;

__attribute__((used)) static inline void PM3_WRITE_DAC_REG(struct pm3_par *par, unsigned r, u8 v)
{
 PM3_WAIT(par, 3);
 PM3_WRITE_REG(par, PM3RD_IndexHigh, (r >> 8) & 0xff);
 PM3_WRITE_REG(par, PM3RD_IndexLow, r & 0xff);
 wmb();
 PM3_WRITE_REG(par, PM3RD_IndexedData, v);
 wmb();
}
