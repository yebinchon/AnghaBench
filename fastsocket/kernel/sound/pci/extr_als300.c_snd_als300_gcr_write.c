
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ GCR_DATA ;
 scalar_t__ GCR_INDEX ;
 int outb (unsigned short,scalar_t__) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void snd_als300_gcr_write(unsigned long port,
      unsigned short reg, u32 val)
{
 outb(reg, port+GCR_INDEX);
 outl(val, port+GCR_DATA);
}
