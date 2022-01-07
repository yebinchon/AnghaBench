
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long* isp ;
 int pc ;

__attribute__((used)) static void
atsign ()
{
  isp[0] = *(long *) (isp[0]);
  pc++;
}
