
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ base_addr ;
 scalar_t__ readb (scalar_t__) ;

__attribute__((used)) static inline u32 udc_read(u32 reg)
{
 return readb(base_addr + reg);
}
