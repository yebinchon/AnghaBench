
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pm3_par {int dummy; } ;


 int PM3InFIFOSpace ;
 scalar_t__ PM3_READ_REG (struct pm3_par*,int ) ;
 int cpu_relax () ;

__attribute__((used)) static inline void PM3_WAIT(struct pm3_par *par, u32 n)
{
 while (PM3_READ_REG(par, PM3InFIFOSpace) < n)
  cpu_relax();
}
