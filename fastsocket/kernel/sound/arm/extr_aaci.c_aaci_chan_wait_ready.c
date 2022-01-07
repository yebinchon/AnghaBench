
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aaci_runtime {scalar_t__ base; } ;


 scalar_t__ AACI_SR ;
 int SR_RXB ;
 int SR_TXB ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline void aaci_chan_wait_ready(struct aaci_runtime *aacirun)
{
 u32 val;
 int timeout = 5000;

 do {
  val = readl(aacirun->base + AACI_SR);
 } while (val & (SR_TXB|SR_RXB) && timeout--);
}
