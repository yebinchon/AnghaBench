
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icheck_range () ;
 long* isp ;
 int pc ;

__attribute__((used)) static void
bang ()
{
  *(long *) ((isp[0])) = isp[-1];
  isp -= 2;
  icheck_range ();
  pc++;
}
