
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 int checksigs () ;
 int cleanup (int ) ;
 int exit (int ) ;
 int untrapsig (int ) ;

__attribute__((used)) static void
exiterr (void)
{
  cleanup (0);
  untrapsig (0);
  checksigs ();
  exit (EXIT_TROUBLE);
}
