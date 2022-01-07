
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ base_addr ;
 int writeb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void udc_write(u32 value, u32 reg)
{
 writeb(value, base_addr + reg);
}
