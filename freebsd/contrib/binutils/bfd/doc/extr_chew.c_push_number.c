
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icheck_range () ;
 long* isp ;
 scalar_t__* pc ;

__attribute__((used)) static void
push_number ()
{
  isp++;
  icheck_range ();
  pc++;
  *isp = (long) (*pc);
  pc++;
}
