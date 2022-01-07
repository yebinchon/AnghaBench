
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

void
prompt (void)
{
  extern int interactive;

  if (interactive)
    {
      printf ("AR >");
      fflush (stdout);
    }
}
