
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SYSSTS0 ;
 unsigned long SYSSTS1 ;

__attribute__((used)) static inline unsigned long get_syssts_reg(int port)
{
 return port == 0 ? SYSSTS0 : SYSSTS1;
}
