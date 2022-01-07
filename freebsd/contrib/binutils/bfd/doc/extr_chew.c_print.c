
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_range () ;
 int fprintf (int ,char*,int) ;
 int icheck_range () ;
 int* isp ;
 int pc ;
 int stderr ;
 int stdout ;
 int tos ;
 int write_buffer (int ,int ) ;

__attribute__((used)) static void
print ()
{
  if (*isp == 1)
    write_buffer (tos, stdout);
  else if (*isp == 2)
    write_buffer (tos, stderr);
  else
    fprintf (stderr, "print: illegal print destination `%ld'\n", *isp);
  isp--;
  tos--;
  icheck_range ();
  check_range ();
  pc++;
}
