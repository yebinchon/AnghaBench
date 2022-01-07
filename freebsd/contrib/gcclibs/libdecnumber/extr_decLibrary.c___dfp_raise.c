
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int raise (int ) ;

void
__dfp_raise (int exception __attribute__ ((unused)))
{
  raise (SIGFPE);
}
