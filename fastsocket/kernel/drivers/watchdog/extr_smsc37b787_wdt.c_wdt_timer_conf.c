
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_io_cr (int,unsigned char) ;

__attribute__((used)) static inline void wdt_timer_conf(unsigned char conf)
{
 write_io_cr(0xF3, conf);
}
