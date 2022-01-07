
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 int abort () ;
 int errno ;
 int error (int ,int,char*,char const*) ;
 int print_message_queue () ;

void
pfatal_with_name (char const *name)
{
  int e = errno;
  print_message_queue ();
  error (EXIT_TROUBLE, e, "%s", name);
  abort ();
}
