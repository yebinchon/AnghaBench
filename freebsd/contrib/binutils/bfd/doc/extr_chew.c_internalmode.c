
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icheck_range () ;
 int internal_mode ;
 int * isp ;
 int pc ;

__attribute__((used)) static void
internalmode ()
{
  internal_mode = *(isp);
  isp--;
  icheck_range ();
  pc++;
}
