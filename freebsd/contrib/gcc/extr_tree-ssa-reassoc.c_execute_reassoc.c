
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_reassoc () ;
 int fini_reassoc () ;
 int init_reassoc () ;
 int repropagate_negates () ;

__attribute__((used)) static unsigned int
execute_reassoc (void)
{
  init_reassoc ();

  do_reassoc ();
  repropagate_negates ();

  fini_reassoc ();
  return 0;
}
