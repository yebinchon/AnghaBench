
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum GA_REG { ____Placeholder_GA_REG } GA_REG ;


 int ODIE_ADDR_IO (unsigned int) ;
 int ODIE_DATA_IO (unsigned int) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void sscape_write_unsafe(unsigned io_base, enum GA_REG reg, unsigned char val)
{
 outb(reg, ODIE_ADDR_IO(io_base));
 outb(val, ODIE_DATA_IO(io_base));
}
