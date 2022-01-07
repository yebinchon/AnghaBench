
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DVSTCTR0 ;
 unsigned long DVSTCTR1 ;

__attribute__((used)) static inline unsigned long get_dvstctr_reg(int port)
{
 return port == 0 ? DVSTCTR0 : DVSTCTR1;
}
