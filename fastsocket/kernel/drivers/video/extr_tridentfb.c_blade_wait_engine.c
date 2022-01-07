
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int STATUS ;
 int cpu_relax () ;
 int readmmr (struct tridentfb_par*,int ) ;

__attribute__((used)) static void blade_wait_engine(struct tridentfb_par *par)
{
 while (readmmr(par, STATUS) & 0xFA800000)
  cpu_relax();
}
